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
    Calendar *winterWeekday1 = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [[NSDateComponents alloc] init];
    
    [components setHour:0];
    [components setMinute:0];
    [components setSecond:0];
    
    [components setDay:20];
    [components setMonth:10];
    [components setYear:2013];
    winterWeekday1.startDate = [calendar dateFromComponents:components];
    
    [components setDay:24];
    [components setMonth:12];
    [components setYear:2013];
    winterWeekday1.endDate = [calendar dateFromComponents:components];
    
    winterWeekday1.monday = @YES;
    winterWeekday1.tuesday = @YES;
    winterWeekday1.wednesday = @YES;
    winterWeekday1.thursday = @YES;
    winterWeekday1.friday = @YES;
    winterWeekday1.saturday = @NO;
    winterWeekday1.sunday = @NO;
    
    Calendar *winterWeekday2 = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    [components setHour:0];
    [components setMinute:0];
    [components setSecond:0];
    
    [components setDay:26];
    [components setMonth:12];
    [components setYear:2013];
    winterWeekday2.startDate = [calendar dateFromComponents:components];
    
    [components setDay:26];
    [components setMonth:12];
    [components setYear:2013];
    winterWeekday2.endDate = [calendar dateFromComponents:components];
    
    winterWeekday2.monday = @YES;
    winterWeekday2.tuesday = @YES;
    winterWeekday2.wednesday = @YES;
    winterWeekday2.thursday = @YES;
    winterWeekday2.friday = @YES;
    winterWeekday2.saturday = @NO;
    winterWeekday2.sunday = @NO;
    
    Calendar *winterWeekday3 = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    [components setHour:0];
    [components setMinute:0];
    [components setSecond:0];
    
    [components setDay:27];
    [components setMonth:12];
    [components setYear:2013];
    winterWeekday3.startDate = [calendar dateFromComponents:components];
    
    [components setDay:31];
    [components setMonth:12];
    [components setYear:2013];
    winterWeekday3.endDate = [calendar dateFromComponents:components];
    
    winterWeekday3.monday = @YES;
    winterWeekday3.tuesday = @YES;
    winterWeekday3.wednesday = @YES;
    winterWeekday3.thursday = @YES;
    winterWeekday3.friday = @YES;
    winterWeekday3.saturday = @NO;
    winterWeekday3.sunday = @NO;
    
    Calendar *winterWeekday4 = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    [components setHour:0];
    [components setMinute:0];
    [components setSecond:0];
    
    [components setDay:02];
    [components setMonth:01];
    [components setYear:2014];
    winterWeekday4.startDate = [calendar dateFromComponents:components];
    
    [components setDay:03];
    [components setMonth:04];
    [components setYear:2014];
    winterWeekday4.endDate = [calendar dateFromComponents:components];
    
    winterWeekday4.monday = @YES;
    winterWeekday4.tuesday = @YES;
    winterWeekday4.wednesday = @YES;
    winterWeekday4.thursday = @YES;
    winterWeekday4.friday = @YES;
    winterWeekday4.saturday = @NO;
    winterWeekday4.sunday = @NO;
    
    //weekend
    Calendar *winterWeekdend1 = [NSEntityDescription insertNewObjectForEntityForName:@"Calendar" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    
    [components setDay:20];
    [components setMonth:10];
    [components setYear:2013];
    winterWeekdend1.startDate = [calendar dateFromComponents:components];
    
    [components setDay:24];
    [components setMonth:12];
    [components setYear:2013];
    winterWeekdend1.endDate = [calendar dateFromComponents:components];
    
    winterWeekdend1.monday = @NO;
    winterWeekdend1.tuesday = @NO;
    winterWeekdend1.wednesday = @NO;
    winterWeekdend1.thursday = @NO;
    winterWeekdend1.friday = @NO;
    winterWeekdend1.saturday = @YES;
    winterWeekdend1.sunday = @YES;
    
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
    
    [self addTrip:glasgowToArdrossan1 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekday1 toTrip:glasgowToArdrossan1];
    [self addCalendar:winterWeekday3 toTrip:glasgowToArdrossan1];
    [self addCalendar:winterWeekday4 toTrip:glasgowToArdrossan1];
    
    Trip *glasgowToArdrossan2 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan2.departureHour = @11;
    glasgowToArdrossan2.departureMinute = @18;
    glasgowToArdrossan2.arrivalHour = @12;
    glasgowToArdrossan2.arrivalMinute = @02;
    
    [self addTrip:glasgowToArdrossan2 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekday1 toTrip:glasgowToArdrossan2];
    [self addCalendar:winterWeekday3 toTrip:glasgowToArdrossan2];
    [self addCalendar:winterWeekday4 toTrip:glasgowToArdrossan2];
    
    Trip *glasgowToArdrossan3 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan3.departureHour = @14;
    glasgowToArdrossan3.departureMinute = @18;
    glasgowToArdrossan3.arrivalHour = @15;
    glasgowToArdrossan3.arrivalMinute = @02;
    
    [self addTrip:glasgowToArdrossan3 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekday1 toTrip:glasgowToArdrossan3];
    [self addCalendar:winterWeekday3 toTrip:glasgowToArdrossan3];
    [self addCalendar:winterWeekday4 toTrip:glasgowToArdrossan3];
    
    Trip *glasgowToArdrossan4 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan4.departureHour = @16;
    glasgowToArdrossan4.departureMinute = @50;
    glasgowToArdrossan4.arrivalHour = @17;
    glasgowToArdrossan4.arrivalMinute = @36;
    
    [self addTrip:glasgowToArdrossan4 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekday1 toTrip:glasgowToArdrossan4];
    [self addCalendar:winterWeekday3 toTrip:glasgowToArdrossan4];
    [self addCalendar:winterWeekday4 toTrip:glasgowToArdrossan4];
    
    Trip *glasgowToArdrossan5 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan5.departureHour = @8;
    glasgowToArdrossan5.departureMinute = @40;
    glasgowToArdrossan5.arrivalHour = @9;
    glasgowToArdrossan5.arrivalMinute = @29;
    
    [self addTrip:glasgowToArdrossan5 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekdend1 toTrip:glasgowToArdrossan5];
    
    Trip *glasgowToArdrossan6 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan6.departureHour = @11;
    glasgowToArdrossan6.departureMinute = @15;
    glasgowToArdrossan6.arrivalHour = @12;
    glasgowToArdrossan6.arrivalMinute = @01;
    
    [self addTrip:glasgowToArdrossan6 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekdend1 toTrip:glasgowToArdrossan6];
    [self addCalendar:winterWeekday2 toTrip:glasgowToArdrossan6];
    
    Trip *glasgowToArdrossan7 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan7.departureHour = @14;
    glasgowToArdrossan7.departureMinute = @05;
    glasgowToArdrossan7.arrivalHour = @14;
    glasgowToArdrossan7.arrivalMinute = @51;
    
    [self addTrip:glasgowToArdrossan7 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekdend1 toTrip:glasgowToArdrossan7];
    
    Trip *glasgowToArdrossan8 = [NSEntityDescription insertNewObjectForEntityForName:@"Trip" inManagedObjectContext:[NSManagedObjectContext sharedInstance]];
    glasgowToArdrossan8.departureHour = @16;
    glasgowToArdrossan8.departureMinute = @55;
    glasgowToArdrossan8.arrivalHour = @17;
    glasgowToArdrossan8.arrivalMinute = @41;
    
    [self addTrip:glasgowToArdrossan8 toRoute:glasgowToArdrossan];
    [self addCalendar:winterWeekdend1 toTrip:glasgowToArdrossan8];
    
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

- (void)addTrip:(Trip *)trip toRoute:(Route *)route
{
    [route addTripsObject:trip];
    trip.route = route;
}

- (void)addCalendar:(Calendar *)calendar toTrip:(Trip *)trip
{
    [trip addCalendarsObject:calendar];
    [calendar addTripsObject:trip];
}

@end
