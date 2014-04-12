//
//  SCAPIClient.h
//  FerryServices
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>

#define BASE_URL @"http://ws.sitekit.net"

// Error domain
extern NSString * const SCAPIClientErrorDomain;

@class SCDisruptionDetails;
@class SCRouteDetails;

@interface SCAPIClient : NSObject

/**
 Singleton instance of the CalMac API Client.
 */
+ (instancetype)sharedInstance;

/**
 Returns an array of SCServiceStatus objects.
 */
- (void)fetchFerryServiceStatusesWithCompletion:(void (^)(NSArray *serviceStatuses, NSError *error))completion;

/**
 Fetch disruption details for a single service.
 */
- (void)fetchDisruptionDetailsForFerryServiceId:(NSInteger)ferryServiceId completion:(void (^)(SCDisruptionDetails *disruptionDetails, SCRouteDetails *routeDetails, NSError *error))completion;

@end
