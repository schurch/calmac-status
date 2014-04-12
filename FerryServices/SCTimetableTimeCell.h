//
//  SCTimetableTimeCell.h
//  FerryServices
//
//  Created by Stefan Church on 29/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SCTimeTableCellDelegate;

@interface SCTimetableTimeCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIButton *buttonInfo;
@property (weak, nonatomic) IBOutlet UILabel *labelTime;
@property (weak, nonatomic) IBOutlet UILabel *labelTimeCounterpart;

@property (weak, nonatomic) id<SCTimeTableCellDelegate> delegate;

@end

@protocol SCTimeTableCellDelegate <NSObject>

@required
- (void)didTouchTimetableInfoButtonForCell:(SCTimetableTimeCell *)cell;

@end