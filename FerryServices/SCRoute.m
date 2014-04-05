//
//  SCRoute.m
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import "SCRoute.h"

#import "FMDatabase.h"
#import "SCLocation.h"
#import "SCTrip.h"

@implementation SCRoute

#pragma mark - Class methods

+ (NSArray *)fetchRoutesForServiceId:(NSInteger)serviceId onDate:(NSDate *)date;
{
    FMDatabase *database = [FMDatabase databaseWithPath:[[NSBundle mainBundle] pathForResource:@"timetables" ofType:@"sqlite"]];
    
    if (![database open]) {
        return nil;
    }
    
    NSString *routesQuery = @"SELECT r.routeId as RouteId,\n"
                                "r.Type as RouteType,\n"
                                "r.SourceLocationId as SourceLocationId,\n"
                                "r.DestinationLocationId as DestinationLocationId\n"
                            "FROM Route r\n"
                            "WHERE r.ServiceId = (?)";
    
    FMResultSet *resultSet = [database executeQuery:routesQuery, [NSNumber numberWithInteger:serviceId]];
    
    NSMutableArray *results = [[NSMutableArray alloc] init];
    while ([resultSet next]) {
        SCRoute *route = [[SCRoute alloc] init];
        
        route.serviceId = [NSNumber numberWithInteger:serviceId];
        route.routeType = [resultSet intForColumn:@"RouteType"];
        
        NSInteger sourceLocationId = [resultSet intForColumn:@"SourceLocationId"];
        route.source = [SCLocation fetchLocationWithId:sourceLocationId];
        
        NSInteger destinationLocationId = [resultSet intForColumn:@"DestinationLocationId"];
        route.destination = [SCLocation fetchLocationWithId:destinationLocationId];
        
        NSInteger routeId = [resultSet intForColumn:@"RouteId"];
        route.trips = [SCTrip fetchTripsForRouteId:routeId onDate:date];
        
        [results addObject:route];
    }
    
    [database close];
    
    return results;
}

#pragma mark - Public

- (NSString *)routeDescription
{
    return [NSString stringWithFormat:@"%@ to %@", self.source.name, self.destination.name];
}

@end
