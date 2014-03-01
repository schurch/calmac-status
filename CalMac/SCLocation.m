//
//  SCLocation.m
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import "SCLocation.h"

#import "FMDatabase.h"

@implementation SCLocation

+ (NSArray *)fetchLocationsForServiceId:(NSInteger)serviceId
{
    FMDatabase *database = [FMDatabase databaseWithPath:[[NSBundle mainBundle] pathForResource:@"timetables" ofType:@"sqlite"]];
    
    if (![database open]) {
        return nil;
    }
    
    NSString *query = @"SELECT l.Name, l.Latitude, l.Longitude\n"
                        "FROM Location l\n"
                        "WHERE l.locationId IN (\n"
                            "SELECT r.sourceLocationId\n"
                            "FROM Route r\n"
                            "WHERE r.serviceId = (?)\n"
                            "UNION\n"
                            "SELECT r.destinationLocationId\n"
                            "FROM Route r\n"
                            "WHERE r.serviceId = (?)\n"
                        ")";
    
    FMResultSet *resultSet = [database executeQuery:query, [NSNumber numberWithInteger:serviceId], [NSNumber numberWithInteger:serviceId]];
    
    NSMutableArray *results = [[NSMutableArray alloc] init];
    while ([resultSet next]) {
        SCLocation *location = [[SCLocation alloc] init];
        location.name = [resultSet stringForColumn:@"Name"];
        location.latitude = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"Latitude"]];
        location.longitude = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"Longitude"]];
        [results addObject:location];
    }
    
    [database close];
    
    return results;
}

+ (SCLocation *)fetchLocationWithId:(NSInteger)locationId
{
    FMDatabase *database = [FMDatabase databaseWithPath:[[NSBundle mainBundle] pathForResource:@"timetables" ofType:@"sqlite"]];
    
    if (![database open]) {
        return nil;
    }
    
    FMResultSet *resultSet = [database executeQuery:@"SELECT l.Name, l.Latitude, l.Longitude FROM Location l WHERE l.LocationId = (?)", [NSNumber numberWithInteger:locationId]];
    
    SCLocation *location = nil;
    if ([resultSet next]) {
        location = [[SCLocation alloc] init];
        location.name = [resultSet stringForColumn:@"Name"];
        location.latitude = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"Latitude"]];
        location.longitude = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"Longitude"]];
    }
    
    [database close];
    
    return location;
}

@end
