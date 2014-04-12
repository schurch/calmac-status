//
//  SCServiceStatusCell.h
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCServiceStatusCell : UITableViewCell

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraintTitleLeadingSpace;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewStatus;
@property (weak, nonatomic) IBOutlet UILabel *labelSubtitle;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@end
