//
//  SCServiceTimetableViewController.h
//  CalMac
//
//  Created by Stefan Church on 29/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCServiceTimetableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControlArrivalDeparture;

@property (nonatomic) NSInteger routeId;

@end
