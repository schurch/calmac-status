//
//  Arrival.h
//  CalMac
//
//  Created by Stefan Church on 28/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Location;

@interface Arrival : NSManagedObject

@property (nonatomic, retain) NSDecimalNumber * arrivalTime;
@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSNumber * day;
@property (nonatomic, retain) Location *source;

@end
