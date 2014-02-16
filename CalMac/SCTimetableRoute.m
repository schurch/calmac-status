//
//  SCTimetableRoute.m
//  CalMac
//
//  Created by Stefan Church on 16/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import "SCTimetableRoute.h"

#import "Location.h"
#import "Route.h"
#import "SCTimetableTrip.h"
#import "Trip.h"

@implementation SCTimetableRoute

+ (NSDateFormatter *)dayOfWeekDateFormatter
{
    static NSDateFormatter *dayDateFormatter = nil;
    
    if (!dayDateFormatter) {
        dayDateFormatter = [[NSDateFormatter alloc] init];
        [dayDateFormatter setDateFormat:@"EEEE"];
    }
    
    return dayDateFormatter;
}

- (id)initWithRoute:(Route *)route date:(NSDate *)date
{
    self = [super init];
    if (self) {
        self.source = route.source.name;
        self.destination = route.destination.name;
        self.type = [route.type integerValue];
        
        
        NSString *dayOfWeek = [[[SCTimetableRoute dayOfWeekDateFormatter] stringFromDate:date] lowercaseString];
        
        NSPredicate *tripPredicate = [NSPredicate predicateWithFormat:@"(ANY calendars.startDate <= %@) AND (ANY calendars.endDate >= %@) AND (ANY calendars.%@ == YES)", date, date, dayOfWeek];
        
        NSSet *filteredTrips = [route.trips filteredSetUsingPredicate:tripPredicate];
        
        NSMutableArray *trips = [[NSMutableArray alloc] init];
        [filteredTrips enumerateObjectsUsingBlock:^(Trip *trip, BOOL *stop) {
            SCTimetableTrip *timetableTrip = [[SCTimetableTrip alloc] init];
            timetableTrip.departureHour = [trip.departureHour integerValue];
            timetableTrip.departureMinute = [trip.departureMinute integerValue];
            timetableTrip.arrivalHour = [trip.arrivalHour integerValue];
            timetableTrip.arrivalMinute = [trip.arrivalMinute integerValue];
            [trips addObject:timetableTrip];
        }];
        
        [trips sortUsingComparator:^NSComparisonResult(SCTimetableTrip *trip1, SCTimetableTrip *trip2) {
            if (trip1.departureHour == trip2.departureHour) {
                if (trip1.departureMinute < trip2.departureMinute) {
                    return NSOrderedAscending;
                }
                else if (trip1.departureMinute > trip2.departureMinute) {
                    return NSOrderedDescending;
                }
                else {
                    return NSOrderedSame;
                }
            }
            else {
                if (trip1.departureHour < trip2.departureHour) {
                    return NSOrderedAscending;
                }
                else {
                    return NSOrderedDescending;
                }
            }
        }];
        
        self.trips = [NSArray arrayWithArray:trips];
    }
    return self;
}

- (NSString *)routeDescription
{
    return [NSString stringWithFormat:@"%@ to %@", self.source, self.destination];
}

@end
