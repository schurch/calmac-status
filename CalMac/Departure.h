//
//  Departure.h
//  CalMac
//
//  Created by Stefan Church on 28/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Location;

@interface Departure : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSNumber * day;
@property (nonatomic, retain) NSDecimalNumber * depatureTime;
@property (nonatomic, retain) Location *destination;

@end
