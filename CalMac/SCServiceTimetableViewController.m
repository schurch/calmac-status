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

#define kPickerAnimationDuration    0.40   // duration for the animation to slide the date picker into view
#define kDatePickerTag              99     // view tag identifiying the date picker view

#define kDateRow   0

static NSString *DatePickerCellIdentifier = @"DatePickerCell";
static NSString *DateCellIdentifier = @"DateCell";
static NSString *HeaderCellIdentifier = @"HeaderCell";
static NSString *TimeCellIdentifier = @"TimeCell";

@interface SCServiceTimetableViewController ()

@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSDateFormatter *dateFormatter;
@property (strong, nonatomic) NSIndexPath *datePickerIndexPath;
@property (strong, nonatomic) NSArray *locations;

@property (assign) NSInteger pickerCellRowHeight;

@end

@implementation SCServiceTimetableViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Timetable";
    
    // obtain the picker view cell's height, works because the cell was pre-defined in our storyboard
    UITableViewCell *pickerViewCellToCheck = [self.tableView dequeueReusableCellWithIdentifier:DatePickerCellIdentifier];
    self.pickerCellRowHeight = pickerViewCellToCheck.frame.size.height;
    
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Location" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"routeId == %d", self.routeId];
    [request setPredicate:predicate];
    
    self.locations = [[NSManagedObjectContext sharedInstance] executeFetchRequest:request error:nil];
    
    self.date = [NSDate date];
    
    self.dateFormatter = [[NSDateFormatter alloc] init];
    [self.dateFormatter setDateStyle:NSDateFormatterLongStyle];    // show short-style date format
    [self.dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    [self.tableView reloadData];
}

#pragma mark - UIActions

- (IBAction)valueChangedArrivalsDepartures:(UISegmentedControl *)sender
{
    [self.tableView reloadData];
}

- (IBAction)dateAction:(id)sender
{
    NSIndexPath *targetedCellIndexPath = nil;
    
    if ([self hasInlineDatePicker])
    {
        // inline date picker: update the cell's date "above" the date picker cell
        //
        targetedCellIndexPath = [NSIndexPath indexPathForRow:self.datePickerIndexPath.row - 1 inSection:0];
    }
    else
    {
        // external date picker: update the current "selected" cell's date
        targetedCellIndexPath = [self.tableView indexPathForSelectedRow];
    }
    
    SCTimetableDateCell *cell = (SCTimetableDateCell *)[self.tableView cellForRowAtIndexPath:targetedCellIndexPath];
    UIDatePicker *targetedDatePicker = sender;
    
    // update our data model
    self.date = targetedDatePicker.date;
    
    // update the cell's date string
    if (self.segmentedControlArrivalDeparture.selectedSegmentIndex == 0) {
        cell.labelSelectedDate.text = [NSString stringWithFormat:@"Departures on %@", [self.dateFormatter stringFromDate:self.date]];
    }
    else {
        cell.labelSelectedDate.text = [NSString stringWithFormat:@"Arrivals on %@", [self.dateFormatter stringFromDate:self.date]];
    }
}

#pragma mark - Inline date picker utility methods

- (BOOL)hasPickerForIndexPath:(NSIndexPath *)indexPath
{
    BOOL hasDatePicker = NO;
    
    NSInteger targetedRow = indexPath.row;
    targetedRow++;
    
    UITableViewCell *checkDatePickerCell =
    [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:targetedRow inSection:0]];
    UIDatePicker *checkDatePicker = (UIDatePicker *)[checkDatePickerCell viewWithTag:kDatePickerTag];
    
    hasDatePicker = (checkDatePicker != nil);
    return hasDatePicker;
}

- (void)updateDatePicker
{
    if (self.datePickerIndexPath != nil)
    {
        UITableViewCell *associatedDatePickerCell = [self.tableView cellForRowAtIndexPath:self.datePickerIndexPath];
        
        UIDatePicker *targetedDatePicker = (UIDatePicker *)[associatedDatePickerCell viewWithTag:kDatePickerTag];
        if (targetedDatePicker != nil)
        {
            [targetedDatePicker setDate:self.date animated:NO];
        }
    }
}

- (BOOL)hasInlineDatePicker
{
    return (self.datePickerIndexPath != nil);
}

- (BOOL)indexPathHasPicker:(NSIndexPath *)indexPath
{
    return ([self hasInlineDatePicker] && self.datePickerIndexPath.row == indexPath.row);
}

- (BOOL)indexPathHasDate:(NSIndexPath *)indexPath
{
    return indexPath.row == kDateRow;
}

- (void)toggleDatePickerForSelectedIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView beginUpdates];
    
    NSArray *indexPaths = @[[NSIndexPath indexPathForRow:indexPath.row + 1 inSection:0]];
    
    // check if 'indexPath' has an attached date picker below it
    if ([self hasPickerForIndexPath:indexPath])
    {
        // found a picker below it, so remove it
        [self.tableView deleteRowsAtIndexPaths:indexPaths
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    else
    {
        // didn't find a picker below it, so we should insert it
        [self.tableView insertRowsAtIndexPaths:indexPaths
                              withRowAnimation:UITableViewRowAnimationFade];
    }
    
    [self.tableView endUpdates];
}

// Reveals the date picker inline for the given indexPath, called by "didSelectRowAtIndexPath".
- (void)displayInlineDatePickerForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // display the date picker inline with the table content
    [self.tableView beginUpdates];
    
    BOOL before = NO;   // indicates if the date picker is below "indexPath", help us determine which row to reveal
    if ([self hasInlineDatePicker])
    {
        before = self.datePickerIndexPath.row < indexPath.row;
    }
    
    BOOL sameCellClicked = (self.datePickerIndexPath.row - 1 == indexPath.row);
    
    // remove any date picker cell if it exists
    if ([self hasInlineDatePicker])
    {
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:self.datePickerIndexPath.row inSection:0]]
                              withRowAnimation:UITableViewRowAnimationFade];
        self.datePickerIndexPath = nil;
    }
    
    if (!sameCellClicked)
    {
        // hide the old date picker and display the new one
        NSInteger rowToReveal = (before ? indexPath.row - 1 : indexPath.row);
        NSIndexPath *indexPathToReveal = [NSIndexPath indexPathForRow:rowToReveal inSection:0];
        
        [self toggleDatePickerForSelectedIndexPath:indexPathToReveal];
        self.datePickerIndexPath = [NSIndexPath indexPathForRow:indexPathToReveal.row + 1 inSection:0];
    }
    
    // always deselect the row containing the start or end date
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self.tableView endUpdates];
    
    // inform our date picker of the current date to match the current cell
    [self updateDatePicker];
}

#pragma mark - Table view data source

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self indexPathHasPicker:indexPath] ? self.pickerCellRowHeight : self.tableView.rowHeight;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.locations count] + 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [self hasInlineDatePicker] ? 2 : 1;
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
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            SCTimetableDateCell *cell = [tableView dequeueReusableCellWithIdentifier:DateCellIdentifier forIndexPath:indexPath];
            
            if (self.segmentedControlArrivalDeparture.selectedSegmentIndex == 0) {
                cell.labelSelectedDate.text = [NSString stringWithFormat:@"Departures on %@", [self.dateFormatter stringFromDate:self.date]];
            }
            else {
                cell.labelSelectedDate.text = [NSString stringWithFormat:@"Arrivals on %@", [self.dateFormatter stringFromDate:self.date]];
            }
            
            return cell;
        }
        else {
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DatePickerCellIdentifier];
            return cell;
        }
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

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.reuseIdentifier == DateCellIdentifier)
    {
        [self displayInlineDatePickerForRowAtIndexPath:indexPath];
    }
    else
    {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

@end
