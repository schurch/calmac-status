//
//  SCDetailViewController.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServiceDetailViewController.h"

#import "SCAPIClient.h"
#import "SCDisruptionDetails.h"
#import "SCRouteDetails.h"
#import "SCServiceStatus.h"
#import "SCServiceTimetableViewController.h"

#define IMAGE_VIEW_TOP_SPACE 29
#define IMAGE_VIEW_TOP_SPACE_REDUCED 17

@interface SCServiceDetailViewController ()

@property (nonatomic, strong) SCDisruptionDetails *disruptionDetails;

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

- (void)configureView
{
    if (self.serviceStatus) {
        self.title = self.serviceStatus.area;
        [self configureMap];
        [self refresh:nil];
    }
}

- (void)configureMap
{
//    NSEntityDescription *routeEntityDescription = [NSEntityDescription entityForName:@"Route" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
//    
//    NSFetchRequest *routesRequest = [[NSFetchRequest alloc] init];
//    [routesRequest setEntity:routeEntityDescription];
//    
//    NSPredicate *routePredicate = [NSPredicate predicateWithFormat:@"routeId == %d", self.serviceStatus.routeId];
//    [routesRequest setPredicate:routePredicate];
//    
//    NSArray *routes = [[NSManagedObjectContext sharedInstance] executeFetchRequest:routesRequest error:nil];
//    
//    NSMutableArray *locations = [[NSMutableArray alloc] init];
//    [routes enumerateObjectsUsingBlock:^(Route *route, NSUInteger idx, BOOL *stop) {
//        if (![locations containsObject:route.source]) {
//            [locations addObject:route.source];
//        }
//        if (![locations containsObject:route.destination]) {
//            [locations addObject:route.destination];
//        }
//    }];
//    
//    if ([locations count] > 0) {
//        NSMutableArray *annotations = [[NSMutableArray alloc] init];
//        CLLocationCoordinate2D coordinates[[locations count]];
//        
//        for (NSInteger i = 0; i < [locations count]; i++) {
//            Location *location = [locations objectAtIndex:i];
//            MKPointAnnotation *locationAnnotation = [[MKPointAnnotation alloc] init];
//            locationAnnotation.coordinate = CLLocationCoordinate2DMake([location.lat doubleValue], [location.lng doubleValue]);
//            locationAnnotation.title = location.name;
//            [annotations addObject:locationAnnotation];
//            coordinates[i] = locationAnnotation.coordinate;
//        }
//        
//        [self.mapView addAnnotations:annotations];
//        
//        MKCoordinateRegion region = coordinateRegionForCoordinates(coordinates, [locations count]);
//        
//        // make slightly larger and offset center so we can see the pins completely
//        region.span = MKCoordinateSpanMake(region.span.latitudeDelta + 0.12, region.span.longitudeDelta);
//        region.center = CLLocationCoordinate2DMake(region.center.latitude + 0.045, region.center.longitude);
//        
//        [self.mapView setRegion:region animated:NO];
//    }
}

#pragma mark - Private

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

MKCoordinateRegion coordinateRegionForCoordinates(CLLocationCoordinate2D *coords, NSUInteger coordCount)
{
    MKMapRect mapRect = MKMapRectNull;
    for (NSUInteger i = 0; i < coordCount; ++i) {
        MKMapPoint point = MKMapPointForCoordinate(coords[i]);
        mapRect = MKMapRectUnion(mapRect, MKMapRectMake(point.x, point.y, 0, 0));
    }
    
    return MKCoordinateRegionForMapRect(mapRect);
}

#pragma mark - UIRefreshControl

- (void)refresh:(UIRefreshControl *)sender
{
    NSLog(@"Refreshing data for route ID: %ld", (long)self.serviceStatus.routeId);
    
    [self toggleDisruptionHidden:YES];
    self.labelNoDisruptions.hidden = YES;
    self.labelDisruptionDetails.text = nil;
    
    self.constraintTopSpaceImageViewDisruption.constant = IMAGE_VIEW_TOP_SPACE;
    
    [self.tableView reloadData];
    
    [self.activityViewLoadingDisruptions startAnimating];
    
    // Fetch the detailed information
    [[SCAPIClient sharedInstance] fetchDisruptionDetailsForFerryServiceId:self.serviceStatus.routeId completion:^(SCDisruptionDetails *disruptionDetails, SCRouteDetails *routeDetails, NSError *error) {
        
        if (disruptionDetails.disruptionStatus == SCDisruptionDetailsStatusNormal) {
            self.imageViewDisruption.image = [UIImage imageNamed:@"green_tick.png"];
            self.labelDisruptionDetails.text = @"There are currently no disruptions with this service.";
            
            self.constraintTopSpaceImageViewDisruption.constant = IMAGE_VIEW_TOP_SPACE_REDUCED;
            
            self.imageViewDisruption.hidden = NO;
            self.labelNoDisruptions.hidden = NO;
        }
        else {
            self.labelDisruptionDetails.text = disruptionDetails.details;
            
            switch (disruptionDetails.disruptionStatus) {
                case SCDisruptionDetailsStatusSailingsAffected:
                    self.imageViewDisruption.image = [UIImage imageNamed:@"orange_exclamation.png"];
                    break;
                case SCDisruptionDetailsStatusSailingsCancelled:
                    self.imageViewDisruption.image = [UIImage imageNamed:@"red_cross.png"];
                    break;
                default:
                    self.imageViewDisruption.image = nil;
                    NSLog(@"Unrecognised disruption status!");
                    break;
            }
            
            self.labelReason.text = disruptionDetails.reason;
            self.labelEndTime.text = [[SCServiceDetailViewController dateFormatter] stringFromDate:disruptionDetails.disruptionEndDate];
            
            if (disruptionDetails.updatedDate) {
                NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
                NSDateComponents *components = [calendar components:NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit
                                                           fromDate:disruptionDetails.updatedDate
                                                             toDate:[NSDate date]
                                                            options:0];
                
                NSString *updatedValue;
                
                if (components.day > 0) {
                    updatedValue = [NSString stringWithFormat:@"%ld days ago", (long)components.day];
                } else if (components.hour > 0) {
                    updatedValue = [NSString stringWithFormat:@"%ld hours ago", (long)components.hour];
                } else {
                    updatedValue = [NSString stringWithFormat:@"%ld minutes ago", (long)components.minute];
                }
                
                self.labelLastUpdated.text = [NSString stringWithFormat:@"Last updated %@", updatedValue];
            }
            else {
                self.labelLastUpdated.text = @"Last updated N/A";
            }
            
            [self toggleDisruptionHidden:NO];
        }
        
        [sender endRefreshing];
        [self.activityViewLoadingDisruptions stopAnimating];
        [self.tableView reloadData];
    }];
}

#pragma mark - Table view datasource / delegates

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        // Timetables
        return 44;
    }
    else if (indexPath.section == 1) {
        // Map
        return 130;
        
    }
    else {
        // Disruptions section
        CGRect boundingRect = [self.labelDisruptionDetails.text boundingRectWithSize:CGSizeMake(self.labelDisruptionDetails.frame.size.width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.labelDisruptionDetails.font} context:nil];
        NSInteger height = ceilf(boundingRect.size.height);
        return height < 40 ? 60 : height + 74; // Height + padding
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        // Timetables
        return self.serviceStatus.route;
    }
    else if (section == 1) {
        // Map
        return @"Map";
    }
    else {
        // Disruptions section
        return @"Disruptions";
    }
}

#pragma mark - Mapview delegate

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view
{
    // dont' perform the normal annotation selection
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
