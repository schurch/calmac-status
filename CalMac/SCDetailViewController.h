//
//  SCDetailViewController.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCServiceStatus;

@interface SCDetailViewController : UIViewController

@property (strong, nonatomic) SCServiceStatus *serviceStatus;

@end
