//
//  SCRoute.h
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SCRouteType) {
    SCRouteTypeFerry = 1,
    SCRouteTypeTrain = 2
};

@class SCLocation;

@interface SCRoute : NSObject

@property (strong, nonatomic) SCLocation *destination;
@property (strong, nonatomic) SCLocation *source;
@property (strong, nonatomic) NSNumber *serviceId;
@property (strong, nonatomic) NSArray *trips; // an array of SCTrip objects

@property (nonatomic) SCRouteType routeType;

+ (NSArray *)fetchRoutesForServiceId:(NSInteger)serviceId onDate:(NSDate *)date;

- (NSString *)routeDescription;

@end
