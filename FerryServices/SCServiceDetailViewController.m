//
//  SCDetailViewController.m
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServiceDetailViewController.h"

#import "SCAPIClient.h"
#import "SCAppDelegate.h"
#import "SCDisruptionDetails.h"
#import "SCLocation.h"
#import "SCRouteDetails.h"
#import "SCServiceStatus.h"
#import "SCServiceTimetableViewController.h"
#import "SCTrip.h"

#define IMAGE_VIEW_TOP_SPACE 29
#define IMAGE_VIEW_TOP_SPACE_REDUCED 17
#define DISRUPTION_DEFAULT_LEADING_SPACE 51
#define DISRUPTION_MINUS_IMAGE_LEADING_SPACE 13

@interface SCServiceDetailViewController ()

@property (strong, nonatomic) SCDisruptionDetails *disruptionDetails;

- (void)configureView;

@end

@implementation SCServiceDetailViewController

+ (NSDateFormatter *)dateFormatter
{
    static dispatch_once_t onceMark;
    static NSDateFormatter *formatter = nil;
    
    dispatch_once(&onceMark, ^{
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"dd MMM yyyy HH:mm"];
    });
    
    return formatter;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    [refreshControl addTarget:self action:@selector(refresh:) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
    
    self.mapView.delegate = self;

    [self configureView];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // Unselect the selected row if any
    NSIndexPath *selection = [self.tableView indexPathForSelectedRow];
    if (selection) {
        [self.tableView deselectRowAtIndexPath:selection animated:YES];
    }
}

- (void)configureView
{
    if (self.serviceStatus) {
        self.title = self.serviceStatus.area;
        NSArray *locations = [SCLocation fetchLocationsForServiceId:self.serviceStatus.routeId];
        if ([locations count] > 0) {
            [self configureMapWithLocations:locations];
        }
        
        [self refresh:nil];
    }
}

- (void)configureMapWithLocations:(NSArray *)locations
{
    if ([locations count] > 0) {
        NSMutableArray *annotations = [[NSMutableArray alloc] init];
        
        for (NSInteger i = 0; i < [locations count]; i++) {
            SCLocation *location = [locations objectAtIndex:i];
            MKPointAnnotation *locationAnnotation = [[MKPointAnnotation alloc] init];
            locationAnnotation.coordinate = CLLocationCoordinate2DMake([location.latitude doubleValue], [location.longitude doubleValue]);
            locationAnnotation.title = location.name;
            [annotations addObject:locationAnnotation];
        }
        
        [self.mapView addAnnotations:annotations];
        
        MKMapRect mapRect = [self mapRectForAnnotations:annotations];
        
        // Add some extra padding so we can see top of pin
        [self.mapView setVisibleMapRect:mapRect edgePadding:UIEdgeInsetsMake(40.0f, 20.0f, 5.0f, 20.0f) animated:NO];
    }
}

#pragma mark - Utility methods

- (void)toggleDisruptionHidden:(BOOL)hidden
{
    self.imageViewDisruption.hidden = hidden;
    self.labelDisruptionDetails.hidden = hidden;
    self.labelLastUpdated.hidden = hidden;
    self.labelReason.hidden = hidden;
    self.labelReasonTitle.hidden = hidden;
    self.labelEndTime.hidden = hidden;
    self.labelEndTimeTitle.hidden = hidden;
}

- (MKMapRect)mapRectForAnnotations:(NSArray *)annotations
{
    __block MKMapRect mapRect = MKMapRectNull;
    
    [annotations enumerateObjectsUsingBlock:^(MKPointAnnotation *annotation, NSUInteger idx, BOOL *stop) {
        MKMapPoint point = MKMapPointForCoordinate(annotation.coordinate);
        mapRect = MKMapRectUnion(mapRect, MKMapRectMake(point.x, point.y, 0.1, 0.1));
    }];
    
    return mapRect;
}

- (BOOL)isTimeTableDataAvailable
{
    return [SCTrip areTripsAvailableForRouteId:self.serviceStatus.routeId];
}

- (NSInteger)disruptionsRowHeight
{
    CGRect boundingRect = [self.labelDisruptionDetails.text boundingRectWithSize:CGSizeMake(self.labelDisruptionDetails.frame.size.width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.labelDisruptionDetails.font} context:nil];
    NSInteger height = ceilf(boundingRect.size.height);
    return height < 40 ? 60 : height + 74; // Height + padding
}

#pragma mark - UIRefreshControl

- (void)refresh:(UIRefreshControl *)sender
{
    NSLog(@"Refreshing data for route ID: %ld", (long)self.serviceStatus.routeId);
    
    [(SCAppDelegate *)[[UIApplication sharedApplication] delegate] setNetworkActivityIndicatorVisible:YES];
    
    [self toggleDisruptionHidden:YES];
    self.labelNoDisruptions.hidden = YES;
    self.labelDisruptionDetails.text = nil;
    
    self.constraintTopSpaceImageViewDisruption.constant = IMAGE_VIEW_TOP_SPACE;
    
    [self.tableView reloadData];
    
    [self.activityViewLoadingDisruptions startAnimating];
    
    // Fetch the detailed information
    [[SCAPIClient sharedInstance] fetchDisruptionDetailsForFerryServiceId:self.serviceStatus.routeId completion:^(SCDisruptionDetails *disruptionDetails, SCRouteDetails *routeDetails, NSError *error) {
        
        if (error) {
            self.imageViewDisruption.image = nil;
            self.labelNoDisruptions.text = @"Unable to fetch the disruption status for this service.";
            
            self.constraintTopSpaceImageViewDisruption.constant = IMAGE_VIEW_TOP_SPACE_REDUCED;
            self.constraintDisruptionMessageLeadingSpace.constant = DISRUPTION_MINUS_IMAGE_LEADING_SPACE;
            
            self.imageViewDisruption.hidden = YES;
            self.labelNoDisruptions.hidden = NO;
        }
        else {
            self.constraintDisruptionMessageLeadingSpace.constant = DISRUPTION_DEFAULT_LEADING_SPACE;
            
            if (disruptionDetails.disruptionStatus == SCDisruptionDetailsStatusNormal || disruptionDetails.disruptionStatus == SCDisruptionDetailsStatusInformation) {
                self.imageViewDisruption.image = [UIImage imageNamed:@"green.png"];
                self.labelNoDisruptions.text = @"There are currently no disruptions with this service.";
                
                self.constraintTopSpaceImageViewDisruption.constant = IMAGE_VIEW_TOP_SPACE_REDUCED;
                
                self.imageViewDisruption.hidden = NO;
                self.labelNoDisruptions.hidden = NO;
            }
            else {
                self.labelDisruptionDetails.text = disruptionDetails.details;
                
                switch (disruptionDetails.disruptionStatus) {
                    case SCDisruptionDetailsStatusSailingsAffected:
                        self.imageViewDisruption.image = [UIImage imageNamed:@"amber.png"];
                        break;
                    case SCDisruptionDetailsStatusSailingsCancelled:
                        self.imageViewDisruption.image = [UIImage imageNamed:@"red.png"];
                        break;
                    default:
                        self.imageViewDisruption.image = nil;
                        NSLog(@"Unrecognised disruption status!");
                        break;
                }
                
                self.labelReason.text = [disruptionDetails.reason capitalizedString];
                self.labelEndTime.text = [[SCServiceDetailViewController dateFormatter] stringFromDate:disruptionDetails.disruptionEndDate];
                
                if (disruptionDetails.updatedDate) {
                    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
                    NSDateComponents *components = [calendar components:NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit
                                                               fromDate:disruptionDetails.updatedDate
                                                                 toDate:[NSDate date]
                                                                options:0];
                    
                    NSString *updatedValue;
                    
                    if (components.day > 0) {
                        NSString *daysString = components.day == 1 ? @"day" : @"days";
                        updatedValue = [NSString stringWithFormat:@"%ld %@ ago", (long)components.day, daysString];
                    } else if (components.hour > 0) {
                        NSString *hoursString = components.day == 1 ? @"hour" : @"hours";
                        updatedValue = [NSString stringWithFormat:@"%ld %@ ago", (long)components.hour, hoursString];
                    } else {
                        NSString *minutesString = components.day == 1 ? @"minute" : @"minutes";
                        updatedValue = [NSString stringWithFormat:@"%ld %@ ago", (long)components.minute, minutesString];
                    }
                    
                    self.labelLastUpdated.text = [NSString stringWithFormat:@"Last updated %@", updatedValue];
                }
                else {
                    self.labelLastUpdated.text = @"Last updated N/A";
                }
                
                [self toggleDisruptionHidden:NO];
            }
        }
        
        [sender endRefreshing];
        [(SCAppDelegate *)[[UIApplication sharedApplication] delegate] setNetworkActivityIndicatorVisible:NO];
        
        [self.activityViewLoadingDisruptions stopAnimating];
        
        [self.tableView reloadData];
    }];
}

#pragma mark - UITableViewDatasource

#define MAP_HEADER @"Map"
#define DISRUPTIONS_HEADER @"Disruptions"
#define TIMETABLE_ROW_HEIGHT 44
#define MAP_ROW_HEIGHT 130

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if ([self isTimeTableDataAvailable]) {
        if (section == 0) {
            return self.serviceStatus.route;
        }
        else if (section == 1) {
            return MAP_HEADER;
        }
        else {
            return DISRUPTIONS_HEADER;
        }
    }
    else {
        if (section == 0) {
            return self.serviceStatus.route;
        }
        else {
            return DISRUPTIONS_HEADER;
        }
    }
}

#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self isTimeTableDataAvailable] ? 3 : 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self isTimeTableDataAvailable]) {
        if (indexPath.section == 0) {
            return self.cellTimetable;
        }
        else if (indexPath.section == 1) {
            return self.cellMap;
        }
        else {
            return self.cellDisruptions;
        }
    }
    else {
        if (indexPath.section == 0) {
            return self.cellMap;
        }
        else {
            return self.cellDisruptions;
        }
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self isTimeTableDataAvailable]) {
        if (indexPath.section == 0) {
            return TIMETABLE_ROW_HEIGHT;
        }
        else if (indexPath.section == 1) {
            return MAP_ROW_HEIGHT;
        }
        else {
            return [self disruptionsRowHeight];
        }
    }
    else {
        if (indexPath.section == 0) {
            return MAP_ROW_HEIGHT;
        }
        else {
            return [self disruptionsRowHeight];
        }
    }
}

#pragma mark - Mapview delegate

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    // don't perform the normal annotation selection
    [mapView deselectAnnotation:view.annotation animated:NO];
}

#pragma mark - Storyboard

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showTimetable"]) {
        SCServiceTimetableViewController *timetableViewController = [segue destinationViewController];
        timetableViewController.routeId = self.serviceStatus.routeId;
    }
}

@end
