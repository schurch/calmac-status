//
//  SCMasterViewController.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServicesViewController.h"

#import "SCAPIClient.h"
#import "SCServiceDetailViewController.h"
#import "SCServiceStatus.h"
#import "SCServiceStatusCell.h"

@interface SCServicesViewController ()

@property (nonatomic, strong) NSArray *serviceStatuses;
@property (nonatomic, strong) NSArray *filteredServiceStatuses;

@end

@implementation SCServicesViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.filteredServiceStatuses = [[NSArray alloc] init];
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
    
    [self refresh:nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // make sure to deselect rows
    NSIndexPath *selectedRowIndexPath = [self.tableView indexPathForSelectedRow];
    if (selectedRowIndexPath) {
        [self.tableView deselectRowAtIndexPath:selectedRowIndexPath animated:YES];
    }
}

#pragma mark - UIRefreshControl

- (void)refresh:(UIRefreshControl *)sender
{
    [[SCAPIClient sharedInstance] fetchFerryServiceStatusesWithCompletion:^(NSArray *serviceStatuses, NSError *error) {
        
        if (error) {
            [[[UIAlertView alloc] initWithTitle:@"Oops" message:@"There was an error. Please check your connection and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        }
        else {
            self.serviceStatuses = serviceStatuses;
            [self.tableView reloadData];
        }
        
        [sender endRefreshing];
    }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [self.filteredServiceStatuses count];
    }
    else {
        return [self.serviceStatuses count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SCServiceStatusCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    SCServiceStatus *serviceStatus;

    if (tableView == self.searchDisplayController.searchResultsTableView) {
        serviceStatus = self.filteredServiceStatuses[indexPath.row];
    }
    else {
        serviceStatus = self.serviceStatuses[indexPath.row];
    }
    
    cell.labelTitle.text = serviceStatus.area;
    cell.labelSubtitle.text = serviceStatus.route;
    
    switch (serviceStatus.disruptionStatus) {
        case SCDisruptionStatusNormal:
            cell.imageViewStatus.image = [UIImage imageNamed:@"green_tick.png"];
            break;
        case SCDisruptionStatusSailingsAffected:
            cell.imageViewStatus.image = [UIImage imageNamed:@"orange_exclamation.png"];
            break;
        case SCDisruptionStatusSailingsCancelled:
            cell.imageViewStatus.image = [UIImage imageNamed:@"red_cross.png"];
            break;
        default:
            cell.imageViewStatus.image = nil;
            NSLog(@"Unrecognised disruption status!");
            break;
    }
    
    return cell;
}

#pragma mark - UISearchDisplayController

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    self.filteredServiceStatuses = [self.serviceStatuses filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"route contains[c] %@ OR area contains[c] %@", searchString, searchString]];
    return YES;
}

#pragma mark - Storyboard

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        SCServiceStatus *serviceStatus;
        
        if (self.searchDisplayController.isActive) {
            NSIndexPath *indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
            serviceStatus = self.filteredServiceStatuses[indexPath.row];
        }
        else {
            NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
            serviceStatus = self.serviceStatuses[indexPath.row];
        }
        
        [[segue destinationViewController] setServiceStatus:serviceStatus];
    }
}

@end
