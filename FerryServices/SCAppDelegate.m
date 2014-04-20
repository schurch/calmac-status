//
//  SCAppDelegate.m
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCAppDelegate.h"

@implementation SCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.tintColor = [UIColor colorWithRed:147.0/155.0 green:35.0/255.0 blue:48.0/255.0 alpha:1.0];
    
    return YES;
}

- (void)setNetworkActivityIndicatorVisible:(BOOL)setVisible
{
    static NSInteger numberOfCallsToSetVisible = 0;
    
    if (setVisible) {
        numberOfCallsToSetVisible++;
    }
    else {
        numberOfCallsToSetVisible--;
    }
    
    // Display the indicator as long as our static counter is > 0.
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:(numberOfCallsToSetVisible > 0)];
}

@end
