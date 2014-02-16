//
//  Trip.h
//  CalMac
//
//  Created by Stefan Church on 15/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Calendar, Route;

@interface Trip : NSManagedObject

@property (nonatomic, retain) NSNumber * arrivalHour;
@property (nonatomic, retain) NSNumber * departureHour;
@property (nonatomic, retain) NSNumber * arrivalMinute;
@property (nonatomic, retain) NSNumber * departureMinute;
@property (nonatomic, retain) NSSet *calendars;
@property (nonatomic, retain) Route *route;
@end

@interface Trip (CoreDataGeneratedAccessors)

- (void)addCalendarsObject:(Calendar *)value;
- (void)removeCalendarsObject:(Calendar *)value;
- (void)addCalendars:(NSSet *)values;
- (void)removeCalendars:(NSSet *)values;

@end
