//
//  SCTimetableTrip.m
//  CalMac
//
//  Created by Stefan Church on 16/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import "SCTimetableTrip.h"

@implementation SCTimetableTrip

- (NSString *)departureTime
{
    return [NSString stringWithFormat:@"%@:%@", [self padWithZero:self.departureHour], [self padWithZero:self.departureMinute ]];
}

- (NSString *)arrivalTime
{
    return [NSString stringWithFormat:@"%@:%@", [self padWithZero:self.arrivalHour], [self padWithZero:self.arrivalMinute ]];
}

- (NSString *)padWithZero:(NSInteger)numberToPad
{
    if (numberToPad < 10) {
        return [NSString stringWithFormat:@"0%d", numberToPad];
    }
    else {
        return [@(numberToPad) stringValue];
    }
}

@end
