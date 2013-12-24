//
//  SCServiceStatusCell.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCServiceStatusCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UIImageView *imageViewStatus;
@property (nonatomic, weak) IBOutlet UILabel *labelSubtitle;
@property (nonatomic, weak) IBOutlet UILabel *labelTitle;

@end
