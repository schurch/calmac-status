//
//  SCDisruptionDetails.m
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCDisruptionDetails.h"

#import "SCRouteDetails.h"

@implementation SCDisruptionDetails

- (id)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        self.addedBy = data[@"AddedByUserID"];
        self.addedDate = [[SCDisruptionDetails dateFormatter] dateFromString:data[@"AddedTime"]];
        self.details = data[@"WebText"];
        self.disruptionEndDate = [[SCDisruptionDetails dateFormatter] dateFromString:data[@"DisruptionEndTime"]];
        self.lastUpdatedBy = data[@"LastUpdatedBy"];
        self.reason = data[@"Reason"];
        self.updatedDate = [[SCDisruptionDetails dateFormatter] dateFromString:data[@"UpdatedTime"]];
        self.disruptionStatus = [data[@"DisruptionStatus"] integerValue];
    }
    return self;
}

+ (NSDateFormatter *)dateFormatter
{
    static dispatch_once_t onceMark;
    static NSDateFormatter *formatter = nil;
    
    dispatch_once(&onceMark, ^{
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"dd MMM yyyy HH:mm"];
    });
    
    return formatter;
}

@end
