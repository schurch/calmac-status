//
//  SCDetailViewController.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCDetailViewController.h"

#import "SCAPIClient.h"
#import "SCDisruptionDetails.h"
#import "SCRouteDetails.h"
#import "SCServiceStatus.h"

@interface SCDetailViewController ()

@property (nonatomic, strong) SCDisruptionDetails *disruptionDetails;

- (void)configureView;

@end

@implementation SCDetailViewController

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
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self configureView];
    
    
    [[SCAPIClient sharedInstance] fetchDisruptionDetailsForFerryServiceId:self.serviceStatus.routeId completion:^(SCDisruptionDetails *disruptionDetails, SCRouteDetails *routeDetails, NSError *error) {
        NSLog(@"");
    }];
}

@end
