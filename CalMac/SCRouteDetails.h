//
//  SCRouteDetails.h
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCRouteDetails : NSObject

@property (nonatomic, strong) NSString *area;
@property (nonatomic, strong) NSString *route;

@property (nonatomic) NSInteger routeId;

- (id)initWithData:(NSDictionary *)data;

@end
