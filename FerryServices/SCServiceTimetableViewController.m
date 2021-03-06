//
//  SCServiceTimetableViewController.m
//  FerryServices
//
//  Created by Stefan Church on 29/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServiceTimetableViewController.h"

#import "SCTimetableDateCell.h"
#import "SCTimetableHeaderCell.h"
#import "SCTimetableTimeCell.h"

#import "SCRoute.h"
#import "SCTrip.h"

#define kDatePickerTag              99     // view tag identifiying the date picker view
#define kDateRow                    0
#define kPickerAnimationDuration    0.40   // duration for the animation to slide the date picker into view

static NSString *DatePickerCellIdentifier = @"DatePickerCell";
static NSString *DateCellIdentifier = @"DateCell";
static NSString *HeaderCellIdentifier = @"HeaderCell";
static NSString *TimeCellIdentifier = @"TimeCell";

@interface SCServiceTimetableViewController ()<SCTimeTableCellDelegate>

@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSDateFormatter *dateFormatter;
@property (strong, nonatomic) NSIndexPath *datePickerIndexPath;
@property (strong, nonatomic) NSArray *routes; // array of SCTimetableRoute objects

@property (assign) NSInteger pickerCellRowHeight;

@end

@implementation SCServiceTimetableViewController

#pragma mark - Properties

- (void)setDate:(NSDate *)date
{
    if (_date != date) {
        // strip time part of date
        NSCalendar *calendar = [NSCalendar currentCalendar];
        calendar.timeZone = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
        NSDateComponents *components = [calendar components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit|NSSecondCalendarUnit fromDate:date];
        
        [components setHour:0];
        [components setMinute:0];
        [components setSecond:0];
        
        _date = [calendar dateFromComponents:components];
    }
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Departures";
    
    UITableViewCell *pickerViewCell = [self.tableView dequeueReusableCellWithIdentifier:DatePickerCellIdentifier];
    self.pickerCellRowHeight = pickerViewCell.frame.size.height;

    self.date = [NSDate date];
    
    self.dateFormatter = [[NSDateFormatter alloc] init];
    self.dateFormatter.dateFormat = @"EEEE dd MMM yy";
    
    self.routes = [[SCRoute fetchRoutesForServiceId:self.routeId onDate:self.date] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"trips.@count > 0"]];
    [self.tableView reloadData];
}

#pragma mark - UIActions

- (IBAction)valueChangedArrivalsDepartures:(UISegmentedControl *)sender
{
    if (sender.selectedSegmentIndex == 0) {
        self.title = @"Departures";
    }
    else {
        self.title = @"Arrivals";
    }
    
    [self.tableView reloadData];
}

- (IBAction)dateAction:(UIDatePicker *)sender
{
    if ([self hasInlineDatePicker])
    {
        self.date = sender.date;
        
        self.routes = [[SCRoute fetchRoutesForServiceId:self.routeId onDate:self.date] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"trips.@count > 0"]];
        [self.tableView reloadData];
    }
}

#pragma mark - Utility methods 

- (SCRoute *)routeForIndexPath:(NSIndexPath *)indexPath
{
    return self.routes[indexPath.section - 1];
}

- (SCTrip *)tripForIndexPath:(NSIndexPath *)indexPath
{
    SCRoute *route = [self routeForIndexPath:indexPath];
    return route.trips[indexPath.row - 1];
}

#pragma mark - Inline date picker utility methods

- (BOOL)hasPickerForIndexPath:(NSIndexPath *)indexPath
{
    NSInteger rowToCheck = indexPath.row + 1;
    
    UITableViewCell *checkDatePickerCell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:rowToCheck inSection:0]];
    UIDatePicker *checkDatePicker = (UIDatePicker *)[checkDatePickerCell viewWithTag:kDatePickerTag];
    
    return (checkDatePicker != nil);
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
    return ([self hasInlineDatePicker] && self.datePickerIndexPath.section == indexPath.section && self.datePickerIndexPath.row == indexPath.row);
}

- (void)toggleDatePickerForSelectedIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView beginUpdates];
    
    NSArray *indexPaths = @[[NSIndexPath indexPathForRow:indexPath.row + 1 inSection:0]];
    
    if ([self hasPickerForIndexPath:indexPath]) {
        [self.tableView deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
    }
    else {
        [self.tableView insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
    }
    
    [self.tableView endUpdates];
}

- (void)displayInlineDatePickerForRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView beginUpdates];
    
    BOOL before = NO;   // indicates if the date picker is below "indexPath", help us determine which row to reveal
    if ([self hasInlineDatePicker]) {
        before = self.datePickerIndexPath.row < indexPath.row;
    }
    
    BOOL sameCellClicked = (self.datePickerIndexPath.row - 1 == indexPath.row);
    
    // remove any date picker cell if it exists
    if ([self hasInlineDatePicker]) {
        [self.tableView deleteRowsAtIndexPaths:@[[NSIndexPath indexPathForRow:self.datePickerIndexPath.row inSection:0]]
                              withRowAnimation:UITableViewRowAnimationFade];
        self.datePickerIndexPath = nil;
    }
    
    if (!sameCellClicked) {
        // hide the old date picker and display the new one
        NSInteger rowToReveal = (before ? indexPath.row - 1 : indexPath.row);
        NSIndexPath *indexPathToReveal = [NSIndexPath indexPathForRow:rowToReveal inSection:0];
        
        [self toggleDatePickerForSelectedIndexPath:indexPathToReveal];
        self.datePickerIndexPath = [NSIndexPath indexPathForRow:indexPathToReveal.row + 1 inSection:0];
    }
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self.tableView endUpdates];
    
    [self updateDatePicker];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSInteger sections = [self.routes count] + 1;
    return  sections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return [self hasInlineDatePicker] ? 2 : 1;
    }
    else {
        SCRoute *route = self.routes[section - 1];
        if ([route.trips count] > 0) {
            return [route.trips count] + 1; // 1 row for route description and rest for trips
        }
        else {
            return 0;
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            SCTimetableDateCell *cell = [tableView dequeueReusableCellWithIdentifier:DateCellIdentifier forIndexPath:indexPath];
            
            if (self.segmentedControlArrivalDeparture.selectedSegmentIndex == 0) {
                cell.labelDeparturesArrivals.text = @"Departures";
                cell.labelSelectedDate.text = [NSString stringWithFormat:@"%@", [self.dateFormatter stringFromDate:self.date]];
            }
            else {
                cell.labelDeparturesArrivals.text = @"Arrivals";
                cell.labelSelectedDate.text = [NSString stringWithFormat:@"%@", [self.dateFormatter stringFromDate:self.date]];
            }
            
            return cell;
        }
        else {
            return [tableView dequeueReusableCellWithIdentifier:DatePickerCellIdentifier];
        }
    }
    else {
        SCRoute *route = [self routeForIndexPath:indexPath];
        
        if (indexPath.row == 0) {
            SCTimetableHeaderCell *headerCell = [tableView dequeueReusableCellWithIdentifier:HeaderCellIdentifier];
            headerCell.labelHeader.text = [route routeDescription];
            
            if (route.routeType == SCRouteTypeFerry) {
                headerCell.imageViewTransportType.image = [UIImage imageNamed:@"ferry_icon.png"];
            }
            else {
                headerCell.imageViewTransportType.image = [UIImage imageNamed:@"train_icon.png"];
            }
            
            return headerCell;
        }
        else {
            SCTrip *trip = [self tripForIndexPath:indexPath];
            
            SCTimetableTimeCell *timeCell = [tableView dequeueReusableCellWithIdentifier:TimeCellIdentifier];
            timeCell.delegate = self;
            
            if ([[trip.notes stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] > 0) {
                timeCell.buttonInfo.hidden = NO;
            }
            else {
                timeCell.buttonInfo.hidden = YES;
            }
            
            if (self.segmentedControlArrivalDeparture.selectedSegmentIndex == 0) {
                timeCell.labelTime.text = [trip departureTime];
                timeCell.labelTimeCounterpart.text = [NSString stringWithFormat:@"arriving at %@", [trip arrivalTime]];
            }
            else {
                timeCell.labelTime.text = [trip arrivalTime];
                timeCell.labelTimeCounterpart.text = [NSString stringWithFormat:@"departed at %@", [trip departureTime]];
            }
            
            return timeCell;
        }
    }
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self indexPathHasPicker:indexPath] ? self.pickerCellRowHeight : self.tableView.rowHeight;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0) {
        SCTimetableDateCell *dateCell = (SCTimetableDateCell *)cell;
        dateCell.labelSelectedDate.textColor =  [[[UIApplication sharedApplication] delegate] window].tintColor;
    }
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.reuseIdentifier == DateCellIdentifier) {
        [self displayInlineDatePickerForRowAtIndexPath:indexPath];
    }
    else {
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}

#pragma mark - SCTimetableCellDelegate

- (void)didTouchTimetableInfoButtonForCell:(SCTimetableTimeCell *)cell
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    SCTrip *trip = [self tripForIndexPath:indexPath];
    [[[UIAlertView alloc] initWithTitle:nil message:trip.notes delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil] show];
}

@end
