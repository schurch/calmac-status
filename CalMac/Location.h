//
//  Location.h
//  CalMac
//
//  Created by Stefan Church on 28/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Arrival, Departure;

@interface Location : NSManagedObject

@property (nonatomic, retain) NSNumber * lat;
@property (nonatomic, retain) NSNumber * lng;
@property (nonatomic, retain) NSNumber * locationType;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * routeId;
@property (nonatomic, retain) NSNumber * sortOrder;
@property (nonatomic, retain) NSSet *arrivals;
@property (nonatomic, retain) NSSet *departures;
@end

@interface Location (CoreDataGeneratedAccessors)

- (void)addArrivalsObject:(Arrival *)value;
- (void)removeArrivalsObject:(Arrival *)value;
- (void)addArrivals:(NSSet *)values;
- (void)removeArrivals:(NSSet *)values;

- (void)addDeparturesObject:(Departure *)value;
- (void)removeDeparturesObject:(Departure *)value;
- (void)addDepartures:(NSSet *)values;
- (void)removeDepartures:(NSSet *)values;

@end
