//
//  Calendar.h
//  CalMac
//
//  Created by Stefan Church on 15/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Trip;

@interface Calendar : NSManagedObject

@property (nonatomic, retain) NSDate * endDate;
@property (nonatomic, retain) NSNumber * friday;
@property (nonatomic, retain) NSNumber * monday;
@property (nonatomic, retain) NSNumber * saturday;
@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) NSNumber * sunday;
@property (nonatomic, retain) NSNumber * thursday;
@property (nonatomic, retain) NSNumber * tuesday;
@property (nonatomic, retain) NSNumber * wednesday;
@property (nonatomic, retain) NSSet *trips;
@end

@interface Calendar (CoreDataGeneratedAccessors)

- (void)addTripsObject:(Trip *)value;
- (void)removeTripsObject:(Trip *)value;
- (void)addTrips:(NSSet *)values;
- (void)removeTrips:(NSSet *)values;

@end
