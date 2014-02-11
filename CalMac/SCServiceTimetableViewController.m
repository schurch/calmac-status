//
//  SCServiceTimetableViewController.m
//  CalMac
//
//  Created by Stefan Church on 29/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServiceTimetableViewController.h"

#import "SCTimetableDateCell.h"
#import "SCTimetableHeaderCell.h"
#import "SCTimetableTimeCell.h"

#import "Arrival.h"
#import "Departure.h"
#import "Location.h"

@interface SCServiceTimetableViewController ()

@property (strong, nonatomic) NSArray *locations;

@end

@implementation SCServiceTimetableViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Winter timetable";
    
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Location" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"routeId == %d", self.routeId];
    [request setPredicate:predicate];
    
    self.locations = [[NSManagedObjectContext sharedInstance] executeFetchRequest:request error:nil];
    
    [self.tableView reloadData];
}

#pragma mark - UIActions

- (IBAction)valueChangedArrivalsDepartures:(UISegmentedControl *)sender
{
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.locations count] + 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    else {
        Location *location = self.locations[section - 1];
        
        if (self.segmentedControlArrivalDeparture.selectedSegmentIndex == 0) {
            return [location.departures count];
        }
        else {
            return [location.arrivals count];
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *DateCellIdentifier = @"DateCell";
    static NSString *HeaderCellIdentifier = @"HeaderCell";
    static NSString *TimeCellIdentifier = @"TimeCell";
    
    if (indexPath.section == 0) {
        SCTimetableDateCell *cell = [tableView dequeueReusableCellWithIdentifier:DateCellIdentifier forIndexPath:indexPath];
        if (self.segmentedControlArrivalDeparture.selectedSegmentIndex == 0) {
            cell.labelSelectedDate.text = [NSString stringWithFormat:@"Departures on "];
        }
        else {
            cell.labelSelectedDate.text = [NSString stringWithFormat:@"Arrivals on"];
        }
        return cell;
    }
    else {
        Location *location = self.locations[indexPath.section - 1];
        
        if (indexPath.row == 0) {
            // Header cell
            SCTimetableHeaderCell *cell = [tableView dequeueReusableCellWithIdentifier:HeaderCellIdentifier forIndexPath:indexPath];
            cell.labelHeader.text = [NSString stringWithFormat:@"%@ to %@", location.name, @""];
            return cell;
        }
        else {
            // Time cell
            SCTimetableTimeCell *cell = [tableView dequeueReusableCellWithIdentifier:TimeCellIdentifier forIndexPath:indexPath];
            return cell;
        }
    }
}

@end
