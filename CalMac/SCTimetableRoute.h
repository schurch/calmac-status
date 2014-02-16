//
//  SCTimetableRoute.h
//  CalMac
//
//  Created by Stefan Church on 16/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Route;

@interface SCTimetableRoute : NSObject

@property (strong, nonatomic) NSString *destination;
@property (strong, nonatomic) NSString *source;
@property (strong, nonatomic) NSArray *trips;

@property (nonatomic) NSInteger type;

- (id)initWithRoute:(Route *)route date:(NSDate *)date;

- (NSString *)routeDescription;

@end
