//
//  SCDetailViewController.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCServiceStatus;

@interface SCServiceDetailViewController : UIViewController

@property (nonatomic, strong) SCServiceStatus *serviceStatus;

@property (nonatomic, weak) IBOutlet UIImageView *imageViewDisruptionStatus;
@property (nonatomic, weak) IBOutlet UILabel *labelDisruptionDetails;
@property (nonatomic, weak) IBOutlet UILabel *labelEndTime;
@property (nonatomic, weak) IBOutlet UILabel *labelEndTimeTitle;
@property (nonatomic, weak) IBOutlet UILabel *labelLastUpdated;
@property (nonatomic, weak) IBOutlet UILabel *labelReason;
@property (nonatomic, weak) IBOutlet UILabel *labelReasonTitle;
@property (nonatomic, weak) IBOutlet UILabel *labelRoute;

@end
