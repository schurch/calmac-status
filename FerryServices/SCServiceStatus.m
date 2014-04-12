//
//  SCServiceStatus.m
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCServiceStatus.h"

@implementation SCServiceStatus

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        self.area = data[@"Area"];
        self.ferryProvider = data[@"provider"];
        self.route = data[@"Route"];
        self.disruptionStatus = [data[@"DisruptionStatus"] integerValue];
        self.routeId = [data[@"RouteID"] integerValue];
        self.sortOrder = [data[@"SortOrder"] integerValue];
    }
    return self;
}

@end
