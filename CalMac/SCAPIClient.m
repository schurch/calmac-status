//
//  SCAPIClient.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCAPIClient.h"

#import "AFNetworking.h"
#import "SCDisruptionDetails.h"
#import "SCRouteDetails.h"
#import "SCServiceStatus.h"

NSString * const SCAPIClientErrorDomain = @"SCAPIClientErrorDomain";

@interface SCAPIClient()

@property (strong, nonatomic) AFHTTPRequestOperationManager *requestManager;

@end

@implementation SCAPIClient

+ (instancetype)sharedInstance
{
    static dispatch_once_t pred;
    static SCAPIClient *sharedInstance = nil;
    dispatch_once(&pred, ^{
        sharedInstance = [[SCAPIClient alloc] init];
    });
    return sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.requestManager = [[AFHTTPRequestOperationManager alloc] initWithBaseURL:[NSURL URLWithString:BASE_URL]];
        self.requestManager.responseSerializer = [AFJSONResponseSerializer serializer];
        [self.requestManager.requestSerializer setValue:@"en-us" forHTTPHeaderField:@"Accept-Language"];
        [self.requestManager.requestSerializer setValue:@"Mozilla/5.0 (iPhone; CPU iPhone OS 7_1 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Mobile/11D167 (350921184)" forHTTPHeaderField:@"User-Agent"];
#ifdef DEBUG
        self.requestManager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain", nil];
#endif
    }
    return self;
}

- (void)fetchFerryServiceStatusesWithCompletion:(void (^)(NSArray *serviceStatuses, NSError *error))completion
{
    NSMutableArray *results = [[NSMutableArray alloc] init];
    
    [self.requestManager GET:@"/ServiceDisruptions/servicestatusfrontV3.asmx/ListServiceStatuses_JSON" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if ([responseObject[@"Success"] integerValue] != 1) {
            NSDictionary *errorUserInfo = @{ NSLocalizedFailureReasonErrorKey:responseObject[@"ErrorMessage"] };
            completion(nil, [NSError errorWithDomain:SCAPIClientErrorDomain code:1 userInfo:errorUserInfo]);
            return;
        }
        
        NSArray *serviceStatuses = responseObject[@"ServiceStatuses"];

        [serviceStatuses enumerateObjectsUsingBlock:^(NSDictionary *serviceStatusData, NSUInteger idx, BOOL *stop) {
            SCServiceStatus *serviceStatus = [[SCServiceStatus alloc] initWithData:serviceStatusData];
            [results addObject:serviceStatus];
        }];
        
        completion([NSArray arrayWithArray:results], nil);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        completion(nil , error);
    }];
    
}

- (void)fetchDisruptionDetailsForFerryServiceId:(NSInteger)ferryServiceId completion:(void (^)(SCDisruptionDetails *disruptionDetails, SCRouteDetails *routeDetails, NSError *error))completion
{
    [self.requestManager GET:@"/ServiceDisruptions/servicestatusfrontV3.asmx/ListRouteDisruptions_JSON" parameters:@{@"routeID": [NSNumber numberWithInteger:ferryServiceId]} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if ([responseObject[@"Success"] integerValue] != 1) {
            NSDictionary *errorUserInfo = @{ NSLocalizedFailureReasonErrorKey:responseObject[@"ErrorMessage"] };
            completion(nil, nil, [NSError errorWithDomain:SCAPIClientErrorDomain code:1 userInfo:errorUserInfo]);
            return;
        }
        
        NSDictionary *disruptionDetailsData = responseObject[@"RouteDisruption"];
        SCDisruptionDetails *disruptionDetails = [[SCDisruptionDetails alloc] initWithData:disruptionDetailsData];
        
        NSDictionary *routeDetailsData = responseObject[@"RouteDetail"];
        SCRouteDetails *routeDetails = [[SCRouteDetails alloc] initWithData:routeDetailsData];
        
        completion(disruptionDetails, routeDetails, nil);

    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        completion(nil, nil, error);
    }];
}

@end
