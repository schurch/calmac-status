//
//  SCMasterViewController.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCMasterViewController.h"

#import "SCAPIClient.h"
#import "SCDetailViewController.h"
#import "SCServiceStatus.h"
#import "SCServiceStatusCell.h"

@interface SCMasterViewController ()

@property (nonatomic, strong) NSArray *serviceStatuses;
@property (nonatomic, strong) NSArray *filteredServiceStatuses;

@end

@implementation SCMasterViewController

- (id)init
{
    self = [super init];
    if (self) {
        self.filteredServiceStatuses = [[NSArray alloc] init];
    }
    return self;
}

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

#pragma mark - Refreshing

- (void)refresh:(UIRefreshControl *)sender
{
    [[SCAPIClient sharedInstance] fetchFerryServiceStatusesWithCompletion:^(NSArray *serviceStatuses, NSError *error) {
        
        if (error) {
            [[[UIAlertView alloc] initWithTitle:@"Oops" message:@"There was a problem fetching the ferry details. Please check your connection and try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
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
            cell.viewServiceStatus.backgroundColor = [UIColor greenColor];
            break;
        case SCDisruptionStatusSailingsAffected:
            cell.viewServiceStatus.backgroundColor = [UIColor orangeColor];
            break;
        case SCDisruptionStatusSailingsCancelled:
            cell.viewServiceStatus.backgroundColor = [UIColor redColor];
            break;
        default:
            cell.viewServiceStatus.backgroundColor = [UIColor clearColor];
            NSLog(@"Unrecognised disruption status!");
            break;
    }
    
    return cell;
}

#pragma mark - UISearchDisplayController
- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    self.filteredServiceStatuses = [self.serviceStatuses filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF.area contains[c] %@", searchString]];
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SCServiceStatus *serviceStatus = self.serviceStatuses[indexPath.row];
        [[segue destinationViewController] setServiceStatus:serviceStatus];
    }
}

@end
