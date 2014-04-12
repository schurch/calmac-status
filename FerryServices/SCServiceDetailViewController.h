//
//  SCDetailViewController.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MapKit/MapKit.h>

@class SCServiceStatus;

@interface SCServiceDetailViewController : UITableViewController<MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet UITableViewCell *cellTimetable;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellMap;
@property (strong, nonatomic) IBOutlet UITableViewCell *cellDisruptions;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityViewLoadingDisruptions;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewDisruption;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintTopSpaceImageViewDisruption;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintDisruptionMessageLeadingSpace;
@property (weak, nonatomic) IBOutlet UILabel *labelDisruptionDetails;
@property (weak, nonatomic) IBOutlet UILabel *labelEndTime;
@property (weak, nonatomic) IBOutlet UILabel *labelEndTimeTitle;
@property (weak, nonatomic) IBOutlet UILabel *labelLastUpdated;
@property (weak, nonatomic) IBOutlet UILabel *labelNoDisruptions;
@property (weak, nonatomic) IBOutlet UILabel *labelReason;
@property (weak, nonatomic) IBOutlet UILabel *labelReasonTitle;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) SCServiceStatus *serviceStatus;

@end
