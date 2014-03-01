//
//  SCTrip.m
//  CalMac
//
//  Created by Stefan Church on 01/03/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import "SCTrip.h"

#import "FMDatabase.h"

@implementation SCTrip

#pragma mark - Class methods

+ (NSDateFormatter *)dayOfWeekDateFormatter
{
    static NSDateFormatter *dayDateFormatter = nil;
    
    if (!dayDateFormatter) {
        dayDateFormatter = [[NSDateFormatter alloc] init];
        [dayDateFormatter setDateFormat:@"EEEE"];
    }
    
    return dayDateFormatter;
}

+ (NSArray *)fetchTripsForRouteId:(NSInteger)routeId onDate:(NSDate *)date
{
    FMDatabase *database = [FMDatabase databaseWithPath:[[NSBundle mainBundle] pathForResource:@"timetables" ofType:@"sqlite"]];
    
    if (![database open]) {
        return nil;
    }
    
    NSString *weekDayString = [[SCTrip dayOfWeekDateFormatter] stringFromDate:date];
    
    NSString *query = [NSString stringWithFormat:@"SELECT t.Notes as Notes, t.DepartureHour as DepartureHour, t.DepartureMinute as DepartureMinute, t.ArrivalHour as ArrivalHour, t.ArrivalMinute as ArrivalMinute\n"
                       "FROM CalendarTrip ct,\n"
                       "(SELECT c.CalendarId\n"
                            "FROM Calendar c\n"
                            "WHERE c.StartDate <= (?)\n"
                            "AND c.EndDate >= (?)\n"
                            "AND c.%@ = 1\n"
                            "AND c.CalendarId NOT IN (SELECT e.CalendarId\n"
                            "FROM Exclusion e\n"
                            "WHERE e.ExclusionDate = (?))\n"
                       ") as c\n"
                       "INNER JOIN Trip t ON t.TripId = ct.TripId\n"
                       "INNER JOIN Route r on r.RouteId = t.RouteId\n"
                       "WHERE ct.CalendarId = c.CalendarId\n"
                       "AND r.routeId = (?)", weekDayString];
    
    NSNumber *dateNumber = [NSNumber numberWithDouble:[date timeIntervalSince1970]];
    
    FMResultSet *resultSet = [database executeQuery:query, dateNumber, dateNumber, dateNumber, [NSNumber numberWithInteger:routeId]];
    
    NSMutableArray *results = [[NSMutableArray alloc] init];
    while ([resultSet next]) {
        SCTrip *trip = [[SCTrip alloc] init];
        trip.departureHour = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"DepartureHour"]];
        trip.departureMinute = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"DepartureMinute"]];
        trip.arrivalHour = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"ArrivalHour"]];
        trip.arrivalMinute = [NSNumber numberWithDouble:[resultSet doubleForColumn:@"ArrivalMinute"]];
        trip.notes = [resultSet stringForColumn:@"Notes"];
        trip.routeId = [NSNumber numberWithInteger:routeId];
        
        [results addObject:trip];
    }
    
    [database close];
    
    return results;
}

#pragma mark - Public

- (NSString *)departureTime
{
    return [NSString stringWithFormat:@"%@:%@", [self padWithZero:self.departureHour], [self padWithZero:self.departureMinute ]];
}

- (NSString *)arrivalTime
{
    return [NSString stringWithFormat:@"%@:%@", [self padWithZero:self.arrivalHour], [self padWithZero:self.arrivalMinute ]];
}

- (NSString *)padWithZero:(NSNumber *)numberToPad
{
    if ([numberToPad integerValue] < 10) {
        return [NSString stringWithFormat:@"0%d", [numberToPad integerValue]];
    }
    else {
        return [numberToPad stringValue];
    }
}


@end
