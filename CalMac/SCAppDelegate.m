//
//  SCAppDelegate.m
//  CalMac
//
//  Created by Stefan Church on 23/12/2013.
//  Copyright (c) 2013 Stefan Church. All rights reserved.
//

#import "SCAppDelegate.h"

#import "Location.h"
#import "Route.h"
#import "Trip.h"
#import "Calendar.h"

@implementation SCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.tintColor = [UIColor colorWithRed:147.0/155.0 green:35.0/255.0 blue:48.0/255.0 alpha:1.0];
    
//    [self generateData];
    
    return YES;
}

#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (void)generateData
{
    // Locations
    Location *glasgowCentralTrain = [NSEntityDescription insertNewObjectForEntityForName:@"Location" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowCentralTrain.name = @"Glasgow Central";
    glasgowCentralTrain.lat = @55.860524;
    glasgowCentralTrain.lng = @-4.258041;
    
    Location *ardrossanHarbourTrain = [NSEntityDescription insertNewObjectForEntityForName:@"Location" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    ardrossanHarbourTrain.name = @"Ardrossan Harbour";
    ardrossanHarbourTrain.lat = @55.639868;
    ardrossanHarbourTrain.lng = @-4.821088;
    
    Location *ardrossanHarbourFerry = [NSEntityDescription insertNewObjectForEntityForName:@"Location" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    ardrossanHarbourFerry.name = @"Ardrossan Harbour";
    ardrossanHarbourFerry.lat = @55.640516;
    ardrossanHarbourFerry.lng = @-4.823062;
    
    Location *brodickHarbourFerry = [NSEntityDescription insertNewObjectForEntityForName:@"Location" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    brodickHarbourFerry.name = @"Brodick Harbour";
    brodickHarbourFerry.lat = @55.576606;
    brodickHarbourFerry.lng = @-5.139172;
    
    //weekday
    Calendar *winterWeekday = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    
    [components setHour:0];
    [components setMinute:0];
    [components setSecond:0];
    
    [components setDay:20];
    [components setMonth:10];
    [components setYear:2013];
    winterWeekday.startDate = [calendar dateFromComponents:components];
    
    [components setDay:03];
    [components setMonth:04];
    [components setYear:2014];
    winterWeekday.endDate = [calendar dateFromComponents:components];
    
    winterWeekday.monday = @YES;
    winterWeekday.tuesday = @YES;
    winterWeekday.wednesday = @YES;
    winterWeekday.thursday = @YES;
    winterWeekday.friday = @YES;
    winterWeekday.saturday = @NO;
    winterWeekday.sunday = @NO;
    
    //weekend
    Calendar *winterWeekdend = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    [components setDay:20];
    [components setMonth:10];
    [components setYear:2013];
    winterWeekdend.startDate = [calendar dateFromComponents:components];
    
    [components setDay:03];
    [components setMonth:04];
    [components setYear:2014];
    winterWeekdend.endDate = [calendar dateFromComponents:components];
    
    winterWeekdend.monday = @NO;
    winterWeekdend.tuesday = @NO;
    winterWeekdend.wednesday = @NO;
    winterWeekdend.thursday = @NO;
    winterWeekdend.friday = @NO;
    winterWeekdend.saturday = @YES;
    winterWeekdend.sunday = @YES;
    
    /* ---------------------
     Glasgow to Ardrossan
     ----------------------- */
    Route *glasgowToArdrossan = [NSEntityDescription insertNewObjectForEntityForName:@"Route" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan.type = @1;
    glasgowToArdrossan.source = glasgowCentralTrain;
    glasgowToArdrossan.destination = ardrossanHarbourTrain;
    glasgowToArdrossan.routeId = @5;
    
    // Trips
    Trip *glasgowToArdrossan1 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan1.departureHour = @8;
    glasgowToArdrossan1.departureMinute = @34;
    glasgowToArdrossan1.arrivalHour = @9;
    glasgowToArdrossan1.arrivalMinute = @20;
    
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan1];
    glasgowToArdrossan1.route = glasgowToArdrossan;
    
    [glasgowToArdrossan1 addCalendarsObject:winterWeekday];
    [winterWeekday addTripsObject:glasgowToArdrossan1];
    
    Trip *glasgowToArdrossan2 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan2.departureHour = @11;
    glasgowToArdrossan2.departureMinute = @18;
    glasgowToArdrossan2.arrivalHour = @12;
    glasgowToArdrossan2.arrivalMinute = @02;
    
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan2];
    glasgowToArdrossan2.route = glasgowToArdrossan;
    
    [glasgowToArdrossan2 addCalendarsObject:winterWeekday];
    [winterWeekday addTripsObject:glasgowToArdrossan2];
    
    Trip *glasgowToArdrossan3 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan3.departureHour = @14;
    glasgowToArdrossan3.departureMinute = @18;
    glasgowToArdrossan3.arrivalHour = @15;
    glasgowToArdrossan3.arrivalMinute = @02;
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan3];
    glasgowToArdrossan3.route = glasgowToArdrossan;
    
    [glasgowToArdrossan3 addCalendarsObject:winterWeekday];
    [winterWeekday addTripsObject:glasgowToArdrossan3];
    
    Trip *glasgowToArdrossan4 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan4.departureHour = @16;
    glasgowToArdrossan4.departureMinute = @50;
    glasgowToArdrossan4.arrivalHour = @17;
    glasgowToArdrossan4.arrivalMinute = @36;
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan4];
    glasgowToArdrossan4.route = glasgowToArdrossan;
    
    [glasgowToArdrossan4 addCalendarsObject:winterWeekday];
    [winterWeekday addTripsObject:glasgowToArdrossan4];
    
    Trip *glasgowToArdrossan5 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan5.departureHour = @8;
    glasgowToArdrossan5.departureMinute = @40;
    glasgowToArdrossan5.arrivalHour = @9;
    glasgowToArdrossan5.arrivalMinute = @29;
    
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan5];
    glasgowToArdrossan5.route = glasgowToArdrossan;
    
    [glasgowToArdrossan5 addCalendarsObject:winterWeekdend];
    [winterWeekdend addTripsObject:glasgowToArdrossan5];
    
    Trip *glasgowToArdrossan6 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan6.departureHour = @11;
    glasgowToArdrossan6.departureMinute = @15;
    glasgowToArdrossan6.arrivalHour = @12;
    glasgowToArdrossan6.arrivalMinute = @01;
    
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan6];
    glasgowToArdrossan6.route = glasgowToArdrossan;
    
    [glasgowToArdrossan6 addCalendarsObject:winterWeekdend];
    [winterWeekdend addTripsObject:glasgowToArdrossan6];
    
    Trip *glasgowToArdrossan7 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan7.departureHour = @14;
    glasgowToArdrossan7.departureMinute = @05;
    glasgowToArdrossan7.arrivalHour = @14;
    glasgowToArdrossan7.arrivalMinute = @51;
    
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan7];
    glasgowToArdrossan7.route = glasgowToArdrossan;
    
    [glasgowToArdrossan7 addCalendarsObject:winterWeekdend];
    [winterWeekdend addTripsObject:glasgowToArdrossan7];
    
    Trip *glasgowToArdrossan8 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan8.departureHour = @16;
    glasgowToArdrossan8.departureMinute = @55;
    glasgowToArdrossan8.arrivalHour = @17;
    glasgowToArdrossan8.arrivalMinute = @41;
    
    [glasgowToArdrossan addTripsObject:glasgowToArdrossan8];
    glasgowToArdrossan8.route = glasgowToArdrossan;
    
    [glasgowToArdrossan8 addCalendarsObject:winterWeekdend];
    [winterWeekdend addTripsObject:glasgowToArdrossan8];
    
    /* ---------------------
     Ardrossan to Brodick
     ----------------------- */
//    Route *ardrossanToBrodick = [NSEntityDescription insertNewObjectForEntityForName:@"Route" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
//    ardrossanToBrodick.type = @0;
//    ardrossanToBrodick.source = glasgowCentralTrain;
//    ardrossanToBrodick.destination = ardrossanHarbourTrain;
    
    /* ---------------------
     Brodick to Ardrossan
     ----------------------- */
//    Route *brodickToArdrossan = [NSEntityDescription insertNewObjectForEntityForName:@"Route" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
//    brodickToArdrossan.type = @0;
//    brodickToArdrossan.source = glasgowCentralTrain;
//    brodickToArdrossan.destination = ardrossanHarbourTrain;
    
    /* ---------------------
     Ardrossan to Glasgow
     ----------------------- */
//    Route *ardrossanToGlasgow = [NSEntityDescription insertNewObjectForEntityForName:@"Route" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
//    ardrossanToGlasgow.type = @1;
//    ardrossanToGlasgow.source = glasgowCentralTrain;
//    ardrossanToGlasgow.destination = ardrossanHarbourTrain;
    
    [[NSManagedObjectContext sharedInstance] save];
}

@end
