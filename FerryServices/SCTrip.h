//
//  SCTrip.h
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCTrip : NSObject

@property (strong, nonatomic) NSNumber *departureHour;
@property (strong, nonatomic) NSNumber *departureMinute;
@property (strong, nonatomic) NSNumber *arrivalHour;
@property (strong, nonatomic) NSNumber *arrivalMinute;
@property (strong, nonatomic) NSString *notes;
@property (strong, nonatomic) NSNumber *routeId;

+ (BOOL)areTripsAvailableForRouteId:(NSInteger)routeId;
+ (NSArray *)fetchTripsForRouteId:(NSInteger)routeId onDate:(NSDate *)date;

- (NSString *)departureTime;
- (NSString *)arrivalTime;

@end
