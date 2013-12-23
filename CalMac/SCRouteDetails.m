//
//  SCRouteDetails.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCRouteDetails.h"

@implementation SCRouteDetails

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        self.area = data[@"Area"];
        self.route = data[@"Route"];
        self.routeId = [data[@"RouteID"] integerValue];
    }
    return self;
}

@end
