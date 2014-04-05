//
//  SCLocation.h
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCLocation : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSNumber *latitude;
@property (strong, nonatomic) NSNumber *longitude;

+ (NSArray *)fetchLocationsForServiceId:(NSInteger)serviceId;
+ (SCLocation *)fetchLocationWithId:(NSInteger)locationId;

@end
