-- Remove everything
DELETE FROM Location;
DELETE FROM Calendar;
DELETE FROM CalendarTrip;
DELETE FROM Exclusion;
DELETE FROM Trip;
DELETE FROM Route;

--------------------------------------
-- Brodick/Ardrossan winter timetable
--------------------------------------

-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (1, "Glasgow Central", 55.860524, -4.258041);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (2, "Ardrossan Harbour", 55.639868, -4.821088);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (3, "Ardrossan Harbour", 55.640516, -4.823062);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (4, "Brodick Harbour", 55.576606, -5.139172);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (1, 2, 1, 2, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (2, 1, 3, 4, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (3, 1, 4, 3, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (4, 2, 2, 1, 5);

---------
-- Trips
---------

----------------------------------------
-- Glasgow central to ardrossan harbour
----------------------------------------
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1, 8, 34, 9, 20, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (2, 11, 18, 12, 02, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (3, 14, 18, 15, 02, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (4, 16, 50, 17, 36, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (5, 8, 40, 9, 29, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (6, 11, 15, 12, 01, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (7, 14, 05, 14, 51, 1, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (8, 16, 55, 17, 41, 1, NULL);

-- CalendarTrips join table
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 1);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 2);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 3);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 4);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 5);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 6);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 7);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 8);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 6);

----------------------------------------
-- Ardrossan harbour to brodick harbour
----------------------------------------
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (9, 7, 00, 7, 55, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (10, 9, 45, 10, 40, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (11, 12, 30, 13, 25, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (12, 15, 15, 16, 10, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (13, 18, 00, 18, 55, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (14, 9, 45, 10, 40, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (15, 12, 30, 13, 25, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (16, 15, 15, 16, 10, 2, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (17, 18, 00, 18, 55, 2, NULL);

-- CalendarTrips join table
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 9);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 10);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 11);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 12);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 13);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 14);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 15);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 16);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 17);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 11);

----------------------------------------
-- Brodick harbour to ardrossan harbour
----------------------------------------
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (18, 8, 20, 9, 15, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (19, 11, 05, 12, 00, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (20, 13, 50, 14, 45, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (21, 16, 40, 17, 35, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (22, 19, 20, 20, 15, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (23, 11, 05, 12, 00, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (24, 13, 50, 14, 45, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (25, 16, 40, 17, 35, 3, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (26, 19, 20, 20, 15, 3, NULL);

-- CalendarTrips join table
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 18);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 19);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 20);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 21);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 22);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 23);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 24);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 25);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 26);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 20);

----------------------------------------
-- Ardrossan harbour to glasgow central
----------------------------------------
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (27, 9, 36, 10, 22, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (28, 12, 36, 13, 22, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (29, 15, 36, 16, 20, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (30, 18, 07, 18, 52, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (31, 20, 31, 21, 25, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (32, 12, 35, 13, 18, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (33, 15, 03, 15, 46, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (34, 18, 00, 18, 44, 4, NULL);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (35, 20, 31, 21, 14, 4, NULL);

-- CalendarTrips join table
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 27);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 28);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 29);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 30);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 31);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 32);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 33);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 34);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 35);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 33);

-------------
-- Calendars
-------------
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (1, strftime('%s', '2013-10-20'), strftime('%s', '2014-04-03'), 1, 1, 1, 1, 1, 1, 0);
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (2, strftime('%s', '2013-10-20'), strftime('%s', '2014-04-03'), 0, 0, 0, 0, 0, 0, 1);
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (3, strftime('%s', '2013-12-26'), strftime('%s', '2013-12-26'), 1, 1, 1, 1, 1, 1, 0);

-----------------------
-- Calendar exclusions
-----------------------
INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (1, 1, strftime('%s', '2013-12-26'));
INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (2, 1, strftime('%s', '2013-12-25'));
INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (3, 1, strftime('%s', '2014-01-01'));
