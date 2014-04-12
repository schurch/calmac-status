//
//  SCDisruptionDetails.h
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SCDisruptionStatus.h"

@class SCRouteDetails;

@interface SCDisruptionDetails : NSObject

@property (strong, nonatomic) NSString *addedBy;
@property (strong, nonatomic) NSDate *addedDate;
@property (strong, nonatomic) NSString *details;
@property (strong, nonatomic) NSDate *disruptionEndDate;
@property (strong, nonatomic) NSString *lastUpdatedBy;
@property (strong, nonatomic) NSString *reason;
@property (strong, nonatomic) NSDate *updatedDate;

@property (nonatomic) SCDisruptionDetailsStatus disruptionStatus;

- (id)initWithData:(NSDictionary *)data;

@end
