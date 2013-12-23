//
//  SCServiceStatus.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SCDisruptionStatus.h"

@interface SCServiceStatus : NSObject

@property (nonatomic, strong) NSString *area;
@property (nonatomic, strong) NSString *ferryProvider;
@property (nonatomic, strong) NSString *route;

@property (nonatomic) SCDisruptionStatus disruptionStatus;
@property (nonatomic) NSInteger routeId;
@property (nonatomic) NSInteger sortOrder;

- (id)initWithData:(NSDictionary *)data;

@end
