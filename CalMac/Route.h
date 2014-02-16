//
//  Route.h
//  CalMac
//
//  Created by Stefan Church on 15/02/2014.
//  Copyright (c) 2014 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Location, Trip;

@interface Route : NSManagedObject

@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSNumber * routeId;
@property (nonatomic, retain) Location *destination;
@property (nonatomic, retain) Location *source;
@property (nonatomic, retain) NSSet *trips;
@end

@interface Route (CoreDataGeneratedAccessors)

- (void)addTripsObject:(Trip *)value;
- (void)removeTripsObject:(Trip *)value;
- (void)addTrips:(NSSet *)values;
- (void)removeTrips:(NSSet *)values;

@end
