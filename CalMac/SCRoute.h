//
//  SCRoute.h
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCRoute : NSObject

+ (NSArray *)fetchRoutesForServiceId:(NSInteger)serviceId onDate:(NSDate *)date;

@end
