//
//  SCDisruptionDetails.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SCDisruptionStatus.h"

@class SCRouteDetails;

@interface SCDisruptionDetails : NSObject

@property (nonatomic, strong) NSString *addedBy;
@property (nonatomic, strong) NSDate *addedDate;
@property (nonatomic, strong) NSString *details;
@property (nonatomic, strong) NSDate *disruptionEndDate;
@property (nonatomic, strong) NSString *lastUpdatedBy;
@property (nonatomic, strong) NSString *reason;
@property (nonatomic, strong) NSDate *updatedDate;

@property (nonatomic) SCDisruptionStatus disruptionStatus;

- (id)initWithData:(NSDictionary *)data;

@end
