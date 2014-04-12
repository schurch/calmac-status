//
//  SCTimetableTimeCell.m
//  FerryServices
//
//  Created by Stefan Church on 29/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCTimetableTimeCell.h"

@implementation SCTimetableTimeCell

- (IBAction)touchedButtonInfo:(id)sender
{
    [self.delegate didTouchTimetableInfoButtonForCell:self];
}

@end
