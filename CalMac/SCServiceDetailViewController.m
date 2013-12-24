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

#pragma mark - Managing the detail item

- (void)setServiceStatus:(SCServiceStatus *)serviceStatus
{
    if (_serviceStatus != serviceStatus) {
        _serviceStatus = serviceStatus;
        [self configureView];
    }
}

- (void)configureView
{
    if (self.serviceStatus) {
        self.title = self.serviceStatus.area;
        
        self.labelRoute.text = self.serviceStatus.route;
        
        switch (self.serviceStatus.disruptionStatus) {
            case SCDisruptionStatusNormal:
                self.imageViewDisruptionStatus.image = [UIImage imageNamed:@"green_tick.png"];
                break;
            case SCDisruptionStatusSailingsAffected:
                self.imageViewDisruptionStatus.image = [UIImage imageNamed:@"orange_exclamation.png"];
                break;
            case SCDisruptionStatusSailingsCancelled:
                self.imageViewDisruptionStatus.image = [UIImage imageNamed:@"red_cross.png"];
                break;
            default:
                self.imageViewDisruptionStatus.image = nil;
                NSLog(@"Unrecognised disruption status!");
                break;
        }
        
        if (self.serviceStatus.disruptionStatus == SCDisruptionStatusNormal) {
            self.labelEndTimeTitle.hidden = YES;
            self.labelReasonTitle.hidden = YES;
        }
        else {
            self.labelEndTimeTitle.hidden = NO;
            self.labelReasonTitle.hidden = NO;
        }
        
        // Fetch the detailed information
        [[SCAPIClient sharedInstance] fetchDisruptionDetailsForFerryServiceId:self.serviceStatus.routeId completion:^(SCDisruptionDetails *disruptionDetails, SCRouteDetails *routeDetails, NSError *error) {
            self.labelDisruptionDetails.text = disruptionDetails.details;
            self.labelReason.text = disruptionDetails.reason;
            self.labelEndTime.text = [[SCServiceDetailViewController dateFormatter] stringFromDate:disruptionDetails.disruptionEndDate];
            
            NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
            NSDateComponents *components = [calendar components:NSDayCalendarUnit|NSHourCalendarUnit|NSMinuteCalendarUnit
                                                       fromDate:disruptionDetails.updatedDate
                                                         toDate:[NSDate date]
                                                        options:0];
            
            NSString *updatedValue;
            
            if (components.day > 0) {
                updatedValue = [NSString stringWithFormat:@"%i days ago", components.day];
            } else if (components.hour > 0) {
                updatedValue = [NSString stringWithFormat:@"%i hours ago", components.hour];
            } else {
                updatedValue = [NSString stringWithFormat:@"%i minutes ago", components.minute];
            }
            
            self.labelLastUpdated.text = [NSString stringWithFormat:@"Last updated %@", updatedValue];
        }];
    }
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self configureView];
}

@end
