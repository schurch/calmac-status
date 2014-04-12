//
//  SCMasterViewController.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServicesViewController.h"

#import "SCAPIClient.h"
#import "SCAppDelegate.h"
#import "SCServiceDetailViewController.h"
#import "SCServiceStatus.h"
#import "SCServiceStatusCell.h"

#define MIN_FAVOURITE_COUNT 2
#define TAP_COUNT_KEY @"com.ferryservices.userdefaultkeys.tapcount"
#define TITLE_LEADING_SPACE_WITH_IMAGE 42
#define TITLE_LEADING_SPACE_MINUS_IMAGE 11

@interface SCServicesViewController ()

@property (strong, nonatomic) NSArray *arrayFavourites; // nil if there are no favourites
@property (strong, nonatomic) NSArray *arrayFilteredServiceStatuses;
@property (strong, nonatomic) NSArray *arrayServiceStatuses;
@property (strong, nonatomic) NSMutableDictionary *dictionaryTapCount;

@property (nonatomic) NSInteger previousFavouritesCount;
@property (nonatomic) BOOL refreshing;

@end

@implementation SCServicesViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.arrayFilteredServiceStatuses = [[NSArray alloc] init];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(applicationDidBecomeActive:)
                                                 name:UIApplicationDidBecomeActiveNotification object:nil];
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
    
    if ([self.arrayServiceStatuses count] == 0) {
        NSString *defaultServicesFilePath = [[NSBundle mainBundle] pathForResource:@"services" ofType:@"json"];
        NSData *servicesData = [NSData dataWithContentsOfFile:defaultServicesFilePath];

        NSError *error = nil;
        NSDictionary *serviceStatusData = [NSJSONSerialization JSONObjectWithData:servicesData options:kNilOptions error:&error];
        
        if (!error) {
            NSArray *serviceStatuses = serviceStatusData[@"ServiceStatuses"];
            
            NSMutableArray *arrayOfStatuses = [[NSMutableArray alloc] init];
            [serviceStatuses enumerateObjectsUsingBlock:^(NSDictionary *serviceStatusData, NSUInteger idx, BOOL *stop) {
                SCServiceStatus *serviceStatus = [[SCServiceStatus alloc] initWithData:serviceStatusData];
                [arrayOfStatuses addObject:serviceStatus];
            }];
            
            self.arrayServiceStatuses = arrayOfStatuses;
            
            [self generateFavourites];
            [self updateEditButtonVisiblity];
            [self.tableView reloadData];
        }
    }
    
    //-- Show the refresh control
    self.tableView.contentOffset = CGPointMake(0, -60);
    [self.refreshControl beginRefreshing];
    
    [self refresh:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (self.previousFavouritesCount != [self.arrayFavourites count]) {
        [self.tableView reloadData];
    }
    
    // make sure to deselect rows
    NSIndexPath *selectedRowIndexPath = [self.tableView indexPathForSelectedRow];
    if (selectedRowIndexPath) {
        [self.tableView deselectRowAtIndexPath:selectedRowIndexPath animated:YES];
    }
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    if ([self.arrayServiceStatuses count] > 0) {
        [self generateFavourites];
        [self updateEditButtonVisiblity];
    }
}

#pragma mark - Notification handlers

- (void)applicationDidBecomeActive:(NSNotification *)notification
{
    [self refresh:nil];
}

#pragma mark - Utiltity methods

- (void)generateFavourites
{
    self.previousFavouritesCount = [self.arrayFavourites count];
    
    // reload tap count dictionary
    NSDictionary *savedCountDictionary = [[NSUserDefaults standardUserDefaults] dictionaryForKey:TAP_COUNT_KEY];
    if (savedCountDictionary) {
        self.dictionaryTapCount = [savedCountDictionary mutableCopy];
    }
    else {
        self.dictionaryTapCount = [[NSMutableDictionary alloc] init];
    }
    
    NSMutableArray *favourites = [[NSMutableArray alloc] init];
    
    [self.arrayServiceStatuses enumerateObjectsUsingBlock:^(SCServiceStatus *serviceStatus, NSUInteger idx, BOOL *stop) {
        NSString *tapCountKey = [NSString stringWithFormat:@"%ld", (long)serviceStatus.routeId];
        if ([self.dictionaryTapCount[tapCountKey] integerValue] >= MIN_FAVOURITE_COUNT) {
            [favourites addObject:serviceStatus];
        }
    }];

    self.arrayFavourites = [NSArray arrayWithArray:favourites];
}

- (void)incrementTapCountForRouteId:(NSInteger)routeId
{
    NSString *routeIdKey = [NSString stringWithFormat:@"%d", routeId];
    NSInteger count = [self.dictionaryTapCount[routeIdKey] integerValue];
    count += 1;
    NSNumber *newCount = [NSNumber numberWithInteger:count];
    self.dictionaryTapCount[routeIdKey] = newCount;
    
    [self saveTapCountDictionary];
}

- (void)updateEditButtonVisiblity
{
    if ([self.arrayFavourites count] > 0) {
        self.navigationItem.rightBarButtonItem = self.editButtonItem;
    }
    else {
        self.navigationItem.rightBarButtonItem = nil;
    }
}

- (void)saveTapCountDictionary
{
    [[NSUserDefaults standardUserDefaults] setObject:self.dictionaryTapCount forKey:TAP_COUNT_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - UIRefreshControl

- (void)refresh:(UIRefreshControl *)sender
{
    if (self.refreshing) {
        return;
    }
    
    self.refreshing = YES;
    
    [(SCAppDelegate *)[[UIApplication sharedApplication] delegate] setNetworkActivityIndicatorVisible:YES];
    
    [[SCAPIClient sharedInstance] fetchFerryServiceStatusesWithCompletion:^(NSArray *serviceStatuses, NSError *error) {
        if (error) {
            [[[UIAlertView alloc] initWithTitle:@"Whoops" message:@"There was a problem fetching the latest disruption details. Please check your connection and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        }
        else {
            self.arrayServiceStatuses = serviceStatuses;
            [self generateFavourites];
            [self updateEditButtonVisiblity];
            [self.tableView reloadData];
        }
        
        [self.refreshControl endRefreshing];
        [(SCAppDelegate *)[[UIApplication sharedApplication] delegate] setNetworkActivityIndicatorVisible:NO];
        
        self.refreshing = NO;
    }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return 1;
    }
    
    if ([self.arrayFavourites count] > 0) {
        return 2;
    }
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [self.arrayFilteredServiceStatuses count];
    }
    else {
        if ([self.arrayFavourites count] > 0) {
            if (section == 0) {
                return [self.arrayFavourites count];
            }
            else {
                return [self.arrayServiceStatuses count];
            }
        }
        else {
            return [self.arrayServiceStatuses count];
        }
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return nil;
    }
    
    if ([self.arrayFavourites count] > 0) {
        if (section == 0) {
            return @"Favourites";
        }
        else {
            return @"Services";
        }
    }
    else {
        return nil;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SCServiceStatusCell *cell;
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
    }
    else {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    }
    
    SCServiceStatus *serviceStatus;

    if (tableView == self.searchDisplayController.searchResultsTableView) {
        serviceStatus = self.arrayFilteredServiceStatuses[indexPath.row];
    }
    else {
        if ([self.arrayFavourites count] > 0) {
            if (indexPath.section == 0 && self.tableView.numberOfSections == 2) {
                serviceStatus = self.arrayFavourites[indexPath.row];
            }
            else {
                serviceStatus = self.arrayServiceStatuses[indexPath.row];
            }
        }
        else {
            serviceStatus = self.arrayServiceStatuses[indexPath.row];
        }
    }
    
    cell.labelTitle.text = serviceStatus.area;
    cell.labelSubtitle.text = serviceStatus.route;
    
    switch (serviceStatus.disruptionStatus) {
        case SCDisruptionStatusNormal:
            cell.imageViewStatus.image = [UIImage imageNamed:@"green.png"];
            break;
        case SCDisruptionStatusSailingsAffected:
            cell.imageViewStatus.image = [UIImage imageNamed:@"amber.png"];
            break;
        case SCDisruptionStatusSailingsCancelled:
            cell.imageViewStatus.image = [UIImage imageNamed:@"red.png"];
            break;
        case SCDisruptionStatusUnknown:
            cell.imageViewStatus.image = nil;
            break;
        default:
            cell.imageViewStatus.image = nil;
            NSLog(@"Unrecognised disruption status!");
            break;
    }
    
    if (serviceStatus.disruptionStatus == SCDisruptionStatusUnknown) {
        cell.constraintTitleLeadingSpace.constant = TITLE_LEADING_SPACE_MINUS_IMAGE;
    }
    else {
        cell.constraintTitleLeadingSpace.constant = TITLE_LEADING_SPACE_WITH_IMAGE;
    }
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return NO;
    }
    
    if ([self.arrayFavourites count] > 0) {
        if (indexPath.section == 0) {
            return YES;
        }
        else {
            return NO;
        }
    }
    else {
        return NO;
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        SCServiceStatus *serviceStatus = self.arrayFavourites[indexPath.row];
        NSString *routeKey = [NSString stringWithFormat:@"%d", serviceStatus.routeId];
        
        [self.dictionaryTapCount removeObjectForKey:routeKey];
        [self saveTapCountDictionary];
        
        [self generateFavourites];
        
        [self.tableView beginUpdates];
        
        if ([self.arrayFavourites count] == 0) {
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
        }
        else {
            [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        }
        
        [self.tableView endUpdates];
    
        [self updateEditButtonVisiblity];
    }
}

#pragma mark - UITableViewDelegate

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SCServiceStatus *serviceStatus;
    
    if (self.searchDisplayController.isActive) {
        NSIndexPath *indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
        serviceStatus = self.arrayFilteredServiceStatuses[indexPath.row];
    }
    else {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        if ([self.arrayFavourites count] > 0) {
            if (indexPath.section == 0) {
                serviceStatus = self.arrayFavourites[indexPath.row];
            }
            else {
                serviceStatus = self.arrayServiceStatuses[indexPath.row];
            }
        }
        else {
            serviceStatus = self.arrayServiceStatuses[indexPath.row];
        }
    }
    
    // Only increment for non favourites
    if ([self.arrayFavourites count] > 0) {
        if ([self.tableView indexPathForSelectedRow].section == 1) {
            [self incrementTapCountForRouteId:serviceStatus.routeId];
        }
    }
    else {
        [self incrementTapCountForRouteId:serviceStatus.routeId];
    }
    
    SCServiceDetailViewController *serviceDetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SCServiceDetailViewController"];
    serviceDetailViewController.serviceStatus = serviceStatus;
    
    [self.navigationController pushViewController:serviceDetailViewController animated:YES];
}

#pragma mark - UISearchDisplayController

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    self.arrayFilteredServiceStatuses = [self.arrayServiceStatuses filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"route contains[c] %@ OR area contains[c] %@", searchString, searchString]];
    return YES;
}

@end
