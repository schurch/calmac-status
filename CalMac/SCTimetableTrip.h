//
//  SCTimetableTrip.h
//  CalMac
//
//  Created by Stefan Church on 16/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCTimetableTrip : NSObject

@property (nonatomic) NSInteger arrivalHour;
@property (nonatomic) NSInteger arrivalMinute;

@property (nonatomic) NSInteger departureHour;
@property (nonatomic) NSInteger departureMinute;

- (NSString *)departureTime;
- (NSString *)arrivalTime;

@end
