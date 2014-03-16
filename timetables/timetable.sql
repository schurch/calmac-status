-- Remove everything
DELETE FROM Location;
DELETE FROM Calendar;
DELETE FROM CalendarTrip;
DELETE FROM Exclusion;
DELETE FROM Trip;
DELETE FROM Route;


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (1, "Glasgow Central", 55.860524, -4.258041);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (2, "Ardrossan Harbour", 55.639868, -4.821088);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (3, "Ardrossan Harbour", 55.640516, -4.823062);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (4, "Brodick Harbour", 55.576606, -5.139172);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (0, 2, 1, 2, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (1, 1, 3, 4, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (2, 1, 4, 3, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (3, 2, 2, 1, 5);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (0, strftime('%s', '2013-10-04'), strftime('%s', '2014-04-03'), 1, 1, 1, 1, 1, 1, 0);

INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (0, 0, strftime('%s', '2013-12-25'));
INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (1, 0, strftime('%s', '2013-12-26'));
INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (2, 0, strftime('%s', '2014-01-01'));

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (0, 08, 34, 09, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 0);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1, 11, 18, 12, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 1);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (2, 14, 18, 15, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 2);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (3, 16, 50, 17, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 3);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (4, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 4);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (5, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 5);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (6, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 6);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (7, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 7);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (8, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 8);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (9, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 9);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (10, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 10);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (11, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 11);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (12, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 12);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (13, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 13);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (14, 09, 36, 10, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 14);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (15, 12, 36, 13, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 15);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (16, 15, 36, 16, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 16);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (17, 18, 07, 18, 52, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 17);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (18, 20, 31, 21, 25, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (0, 18);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (1, strftime('%s', '2013-10-04'), strftime('%s', '2014-04-03'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (19, 08, 40, 09, 29, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 19);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (20, 11, 15, 12, 01, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 20);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (21, 14, 05, 14, 51, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 21);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (22, 16, 55, 17, 41, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 22);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (23, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 23);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (24, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 24);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (25, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 25);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (26, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 26);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (27, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 27);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (28, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 28);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (29, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 29);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (30, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 30);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (31, 12, 35, 13, 18, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 31);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (32, 15, 03, 15, 46, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 32);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (33, 18, 00, 18, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 33);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (34, 20, 31, 21, 14, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (1, 34);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (2, strftime('%s', '2013-12-26'), strftime('%s', '2013-12-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (35, 11, 15, 12, 01, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 35);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (36, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 36);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (37, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 37);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (38, 15, 03, 15, 46, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (2, 38);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (3, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (39, 06, 45, 07, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 39);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (40, 08, 34, 09, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 40);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (41, 09, 18, 10, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 41);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (42, 11, 18, 12, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 42);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (43, 12, 18, 13, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 43);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (44, 14, 18, 15, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 44);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (45, 15, 18, 16, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 45);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (46, 16, 50, 17, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 46);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (47, 18, 18, 19, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 47);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (48, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 48);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (49, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 49);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (50, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 50);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (51, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 51);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (52, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 52);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (53, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 53);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (54, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 54);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (55, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 55);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (56, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 56);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (57, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 57);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (58, 08, 19, 09, 10, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 58);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (59, 09, 36, 10, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 59);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (60, 11, 36, 12, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 60);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (61, 12, 36, 13, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 61);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (62, 13, 36, 14, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 62);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (63, 15, 36, 16, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 63);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (64, 16, 36, 17, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 64);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (65, 18, 07, 18, 52, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 65);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (66, 19, 31, 20, 23, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 66);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (67, 20, 31, 21, 25, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (3, 67);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (4, strftime('%s', '2014-05-01'), strftime('%s', '2014-09-29'), 1, 1, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (68, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 68);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (69, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 69);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (70, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 70);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (71, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 71);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (72, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 72);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (73, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 73);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (74, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 74);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (75, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 75);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (76, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 76);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (77, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (4, 77);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (5, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (78, 06, 45, 07, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 78);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (79, 08, 34, 09, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 79);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (80, 09, 18, 10, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 80);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (81, 11, 18, 12, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 81);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (82, 12, 18, 13, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 82);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (83, 14, 18, 15, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 83);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (84, 16, 50, 17, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 84);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (85, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 85);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (86, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 86);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (87, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 87);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (88, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 88);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (89, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 89);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (90, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 90);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (91, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 91);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (92, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 92);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (93, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 93);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (94, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 94);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (95, 08, 19, 09, 10, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 95);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (96, 09, 36, 10, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 96);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (97, 11, 36, 12, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 97);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (98, 12, 36, 13, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 98);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (99, 13, 36, 14, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 99);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (100, 15, 36, 16, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 100);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (101, 16, 36, 17, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 101);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (102, 18, 07, 18, 52, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 102);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (103, 20, 31, 21, 25, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (5, 103);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (6, strftime('%s', '2014-05-01'), strftime('%s', '2014-09-29'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (104, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 104);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (105, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 105);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (106, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 106);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (107, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 107);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (108, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 108);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (109, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 109);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (110, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (6, 110);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (7, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (111, 08, 34, 09, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 111);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (112, 09, 18, 10, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 112);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (113, 11, 18, 12, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 113);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (114, 12, 18, 13, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 114);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (115, 14, 18, 15, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 115);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (116, 16, 50, 17, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 116);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (117, 19, 15, 20, 06, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 117);


-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (118, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 118);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (119, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 119);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (120, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 120);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (121, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 121);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (122, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 122);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (123, 20, 30, 21, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 123);


-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (124, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 124);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (125, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 125);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (126, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 126);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (127, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 127);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (128, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 128);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (129, 21, 40, 22, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 129);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (130, 09, 36, 10, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 130);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (131, 12, 36, 13, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 131);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (132, 13, 36, 14, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 132);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (133, 15, 36, 16, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 133);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (134, 16, 36, 17, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 134);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (135, 18, 07, 18, 52, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 135);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (136, 20, 31, 21, 25, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (7, 136);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (8, strftime('%s', '2014-05-01'), strftime('%s', '2014-09-29'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (137, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (8, 137);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (138, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (8, 138);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (139, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (8, 139);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (140, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (8, 140);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (9, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (141, 08, 34, 09, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 141);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (142, 09, 18, 10, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 142);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (143, 11, 18, 12, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 143);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (144, 12, 18, 13, 02, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 144);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (145, 14, 18, 15, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 145);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (146, 15, 18, 16, 03, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 146);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (147, 16, 50, 17, 36, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 147);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (148, 20, 15, 21, 06, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 148);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (149, 07, 00, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 149);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (150, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 150);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (151, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 151);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (152, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 152);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (153, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 153);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (154, 08, 20, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 154);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (155, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 155);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (156, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 156);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (157, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 157);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (158, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 158);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (159, 09, 36, 10, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 159);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (160, 11, 36, 12, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 160);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (161, 12, 36, 13, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 161);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (162, 13, 36, 14, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 162);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (163, 15, 36, 16, 20, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 163);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (164, 16, 36, 17, 22, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 164);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (165, 18, 07, 18, 52, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 165);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (166, 19, 31, 20, 23, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 166);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (167, 20, 31, 21, 25, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (9, 167);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (10, strftime('%s', '2014-05-01'), strftime('%s', '2014-09-29'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (168, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 168);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (169, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 169);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (170, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 170);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (171, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 171);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (172, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 172);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (173, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 173);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (174, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (10, 174);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (11, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (175, 08, 40, 09, 29, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 175);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (176, 11, 15, 12, 01, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 176);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (177, 14, 05, 14, 51, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 177);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (178, 16, 55, 17, 41, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 1 AND DestinationLocationId = 2 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 178);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (179, 09, 45, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 179);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (180, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 180);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (181, 15, 15, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 181);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (182, 18, 00, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 182);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (183, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 183);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (184, 13, 50, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 184);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (185, 16, 40, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 185);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (186, 19, 20, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 186);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (187, 12, 35, 13, 18, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 187);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (188, 15, 03, 15, 46, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 188);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (189, 18, 00, 18, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 189);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (190, 20, 31, 21, 14, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 2 AND DestinationLocationId = 1 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (11, 190);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (12, strftime('%s', '2014-05-01'), strftime('%s', '2014-09-29'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (191, 11, 05, 12, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (12, 191);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (192, 20, 00, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 3 AND DestinationLocationId = 4 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (12, 192);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (193, 09, 05, 10, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (12, 193);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (194, 12, 30, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 4 AND DestinationLocationId = 3 AND ServiceId = 5), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (12, 194);


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (5, "Glasgow Central", 55.860524, -4.258041);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (6, "Wemyss Bay", 55.876138, -4.889059);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (7, "Wemyss Bay", 55.875730, -4.890800);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (8, "Rothesay", 55.838480, -5.054210);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (4, 2, 5, 6, 3);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (5, 1, 7, 8, 3);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (6, 1, 8, 7, 3);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (7, 2, 6, 5, 3);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (13, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (195, 06, 05, 06, 57, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 195);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (196, 06, 32, 07, 33, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 196);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (197, 07, 50, 08, 41, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 197);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (198, 08, 55, 09, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 198);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (199, 16, 32, 17, 24, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 199);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (200, 17, 16, 18, 07, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 200);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (201, 17, 55, 18, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 201);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (202, 18, 38, 19, 37, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 202);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (203, 19, 36, 20, 33, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 203);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (204, 20, 36, 21, 33, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 204);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (205, 07, 55, 08, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 205);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (206, 08, 45, 09, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 206);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (207, 09, 25, 10, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 207);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (208, 10, 15, 10, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 208);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (209, 11, 00, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 209);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (210, 12, 00, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 210);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (211, 13, 05, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 211);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (212, 14, 05, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 212);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (213, 15, 00, 15, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 213);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (214, 16, 00, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 214);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (215, 16, 45, 17, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 215);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (216, 17, 30, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 216);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (217, 18, 15, 18, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 217);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (218, 19, 00, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 218);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (219, 19, 45, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 219);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (220, 07, 00, 07, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 220);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (221, 08, 00, 08, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 221);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (222, 08, 40, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 222);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (223, 09, 30, 10, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 223);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (224, 10, 10, 10, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 224);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (225, 11, 00, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 225);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (226, 12, 00, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 226);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (227, 13, 00, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 227);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (228, 14, 00, 14, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 228);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (229, 15, 00, 15, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 229);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (230, 16, 00, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 230);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (231, 16, 45, 17, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 231);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (232, 17, 30, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 232);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (233, 18, 15, 18, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 233);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (234, 19, 00, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 234);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (235, 07, 16, 08, 09, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 235);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (236, 07, 54, 08, 47, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 236);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (237, 08, 57, 09, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 237);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (238, 09, 57, 10, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 238);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (239, 10, 57, 11, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 239);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (240, 11, 57, 12, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 240);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (241, 12, 57, 13, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 241);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (242, 13, 57, 14, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 242);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (243, 14, 57, 15, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 243);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (244, 15, 57, 16, 46, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 244);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (245, 16, 45, 17, 35, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 245);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (246, 17, 49, 18, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 246);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (247, 18, 24, 19, 19, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 247);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (248, 18, 56, 19, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 248);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (249, 19, 47, 20, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 249);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (250, 20, 47, 21, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 250);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (251, 21, 52, 22, 49, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (13, 251);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (14, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (252, 07, 50, 08, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 252);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (253, 08, 50, 09, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 253);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (254, 09, 50, 10, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 254);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (255, 10, 50, 11, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 255);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (256, 11, 50, 12, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 256);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (257, 12, 50, 13, 40, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 257);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (258, 13, 50, 14, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 258);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (259, 14, 50, 15, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 259);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (260, 15, 50, 16, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 260);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (261, 16, 50, 17, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 261);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (262, 17, 50, 18, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 262);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (263, 18, 50, 19, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 263);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (264, 08, 45, 09, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 264);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (265, 10, 15, 10, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 265);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (266, 11, 00, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 266);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (267, 12, 00, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 267);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (268, 13, 00, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 268);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (269, 13, 50, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 269);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (270, 15, 00, 15, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 270);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (271, 16, 00, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 271);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (272, 16, 45, 17, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 272);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (273, 17, 30, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 273);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (274, 18, 15, 18, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 274);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (275, 19, 00, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 275);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (276, 19, 45, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 276);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (277, 20, 45, 21, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 277);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (278, 08, 00, 08, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 278);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (279, 09, 30, 10, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 279);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (280, 10, 10, 10, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 280);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (281, 11, 00, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 281);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (282, 12, 00, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 282);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (283, 13, 00, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 283);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (284, 14, 00, 14, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 284);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (285, 15, 10, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 285);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (286, 16, 00, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 286);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (287, 16, 45, 17, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 287);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (288, 17, 30, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 288);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (289, 18, 15, 18, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 289);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (290, 19, 00, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 290);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (291, 19, 45, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 291);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (292, 08, 50, 09, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 292);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (293, 10, 55, 11, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 293);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (294, 11, 50, 12, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 294);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (295, 12, 50, 13, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 295);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (296, 13, 50, 14, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 296);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (297, 14, 50, 15, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 297);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (298, 15, 55, 16, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 298);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (299, 16, 50, 17, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 299);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (300, 17, 50, 18, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 300);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (301, 18, 55, 19, 44, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 301);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (302, 19, 50, 20, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 302);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (303, 20, 50, 21, 39, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 6 AND DestinationLocationId = 5 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (14, 303);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (15, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-18'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (304, 09, 55, 10, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 304);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (305, 10, 55, 11, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 305);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (306, 11, 55, 12, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 306);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (307, 12, 55, 13, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 307);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (308, 13, 55, 14, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 308);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (309, 14, 55, 15, 43, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 309);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (310, 15, 47, 16, 38, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (15, 310);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (16, strftime('%s', '2014-05-19'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);
-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (311, 09, 55, 10, 48, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (16, 311);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (312, 10, 57, 11, 47, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (16, 312);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (313, 11, 57, 12, 47, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (16, 313);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (314, 12, 57, 13, 47, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (16, 314);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (315, 13, 57, 14, 47, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (16, 315);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (316, 14, 57, 15, 47, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (16, 316);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (17, strftime('%s', '2014-05-19'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);
-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (317, 15, 50, 16, 38, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (17, 317);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (18, strftime('%s', '2014-05-19'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);
-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (318, 15, 47, 16, 38, (SELECT RouteId FROM Route WHERE Type = 2 AND SourceLocationId = 5 AND DestinationLocationId = 6 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (18, 318);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (19, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (319, 07, 15, 07, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (19, 319);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (320, 06, 25, 07, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (19, 320);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (20, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (321, 20, 45, 21, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (20, 321);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (322, 19, 45, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (20, 322);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (21, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-06'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (323, 22, 00, 22, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (21, 323);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (324, 21, 10, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (21, 324);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (22, strftime('%s', '2014-06-07'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (325, 22, 00, 22, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (22, 325);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (326, 21, 10, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (22, 326);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (23, strftime('%s', '2014-24-08'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (327, 22, 00, 22, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (23, 327);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (328, 21, 10, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (23, 328);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (9, "Stornoway", 58.206822, -6.386586);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (10, "Ullapool Bay", 57.894939, -5.160442);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (8, 1, 9, 10, 25);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (9, 1, 10, 9, 25);



-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (24, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (329, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 329);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (330, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 330);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (331, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 331);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (332, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 332);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (25, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (333, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 333);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (334, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 334);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (335, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 335);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (336, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 336);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (26, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (337, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 337);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (338, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 338);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (27, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (339, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 339);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (340, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 340);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (341, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 341);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (342, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 342);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (28, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (343, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 343);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (344, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 344);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (345, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 345);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (346, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 346);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (29, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (347, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 347);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (348, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 348);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (30, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 1, 1, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (349, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 349);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (350, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 350);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (351, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 351);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (352, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 352);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (31, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 1, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (353, 06, 00, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 353);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (354, 13, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 354);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (355, 19, 45, 22, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 355);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (356, 09, 30, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 356);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (357, 16, 30, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 357);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (358, 23, 00, 01, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), 'Arrives following morning.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 358);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (32, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (359, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 359);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (360, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 360);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (361, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 361);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (362, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 362);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (33, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (363, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 363);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (364, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 364);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (11, "Largs", 55.794945, -4.871013);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (12, "Cumbrae Slip", 55.786710, -4.898246);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (10, 1, 11, 12, 7);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (11, 1, 12, 11, 7);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (34, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (365, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 365);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (366, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 366);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (367, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 367);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (368, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 368);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (369, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 369);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (370, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 370);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (371, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 371);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (372, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 372);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (373, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 373);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (374, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 374);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (375, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 375);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (376, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 376);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (377, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 377);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (378, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 378);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (379, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 379);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (380, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 380);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (381, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 381);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (382, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 382);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (383, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 383);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (384, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 384);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (385, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 385);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (386, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 386);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (387, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 387);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (388, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 388);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (389, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 389);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (390, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 390);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (391, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 391);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (392, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 392);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (393, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 393);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (394, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 394);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (395, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 395);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (396, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 396);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (397, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 397);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (398, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 398);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (399, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 399);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (400, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 400);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (401, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 401);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (402, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 402);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (403, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 403);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (404, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 404);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (405, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 405);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (406, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 406);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (407, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 407);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (408, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 408);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (409, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 409);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (410, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 410);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (411, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 411);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (412, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 412);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (413, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 413);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (414, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 414);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (35, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (415, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 415);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (416, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 416);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (417, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 417);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (418, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 418);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (419, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 419);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (420, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 420);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (421, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 421);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (422, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 422);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (423, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 423);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (424, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 424);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (425, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 425);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (426, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 426);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (427, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 427);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (428, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 428);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (429, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 429);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (430, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 430);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (431, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 431);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (432, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 432);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (433, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 433);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (434, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 434);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (435, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 435);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (436, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 436);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (437, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 437);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (438, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 438);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (439, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 439);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (440, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 440);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (441, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 441);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (442, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 442);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (443, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 443);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (444, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 444);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (445, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 445);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (446, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 446);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (447, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 447);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (448, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 448);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (449, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 449);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (450, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 450);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (451, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 451);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (452, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 452);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (453, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 453);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (454, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 454);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (455, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 455);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (456, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 456);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (457, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 457);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (458, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 458);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (459, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 459);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (460, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 460);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (461, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 461);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (462, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 462);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (463, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 463);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (464, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 464);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (36, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (465, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 465);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (466, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 466);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (467, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 467);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (468, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 468);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (37, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (469, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 469);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (470, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 470);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (471, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 471);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (472, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 472);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (38, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-18'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (473, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 473);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (474, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 474);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (475, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 475);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (476, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 476);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (477, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 477);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (478, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 478);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (479, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 479);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (480, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 480);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (481, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 481);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (482, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 482);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (483, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 483);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (484, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 484);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (485, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 485);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (486, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 486);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (487, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 487);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (488, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 488);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (489, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 489);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (490, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 490);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (491, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 491);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (492, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 492);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (493, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 493);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (494, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 494);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (495, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 495);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (496, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 496);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (497, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 497);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (498, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 498);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (499, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 499);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (500, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 500);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (501, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 501);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (502, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 502);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (503, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 503);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (504, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 504);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (505, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 505);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (506, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 506);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (507, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 507);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (508, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 508);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (509, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 509);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (510, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 510);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (511, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 511);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (512, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 512);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (39, strftime('%s', '2014-08-24'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (513, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 513);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (514, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 514);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (515, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 515);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (516, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 516);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (517, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 517);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (518, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 518);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (519, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 519);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (520, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 520);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (521, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 521);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (522, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 522);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (523, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 523);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (524, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 524);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (525, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 525);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (526, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 526);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (527, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 527);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (528, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 528);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (529, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 529);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (530, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 530);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (531, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 531);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (532, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 532);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (533, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 533);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (534, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 534);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (535, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 535);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (536, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 536);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (537, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 537);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (538, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 538);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (539, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 539);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (540, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 540);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (541, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 541);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (542, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 542);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (543, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 543);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (544, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 544);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (545, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 545);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (546, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 546);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (547, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 547);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (548, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 548);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (549, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 549);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (550, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 550);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (551, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 551);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (552, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 552);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (40, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (553, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 553);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (554, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 554);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (555, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 555);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (556, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 556);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (557, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 557);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (558, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 558);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (559, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 559);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (560, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 560);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (561, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 561);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (562, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 562);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (563, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 563);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (564, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 564);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (565, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 565);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (566, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 566);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (567, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 567);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (568, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 568);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (569, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 569);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (570, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 570);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (571, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 571);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (572, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 572);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (573, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 573);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (574, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 574);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (575, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 575);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (576, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 576);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (577, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 577);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (578, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 578);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (579, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 579);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (580, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 580);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (581, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 581);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (582, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 582);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (583, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 583);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (584, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 584);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (585, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 585);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (586, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 586);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (587, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 587);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (588, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 588);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (589, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 589);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (590, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 590);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (591, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 591);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (592, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 592);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (593, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 593);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (594, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 594);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (595, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 595);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (596, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 596);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (597, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 597);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (598, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 598);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (599, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 599);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (600, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 600);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (601, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 601);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (602, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 602);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (603, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 603);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (604, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 604);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (605, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 605);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (606, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 606);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (607, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 607);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (608, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 608);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (609, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 609);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (610, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 610);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (611, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 611);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (612, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 612);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (613, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 613);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (614, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 614);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (615, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 615);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (616, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 616);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (617, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 617);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (618, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 618);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (619, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 619);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (620, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 620);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (621, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 621);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (622, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 622);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (623, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 623);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (624, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 624);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (625, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 625);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (626, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 626);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (627, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 627);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (628, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 628);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (629, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 629);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (630, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 630);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (631, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 631);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (632, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 632);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (633, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 633);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (634, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 634);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (635, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 635);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (636, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 636);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (637, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 637);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (638, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 638);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (639, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 639);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (640, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 640);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (641, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 641);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (642, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 642);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (643, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 643);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (644, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 644);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (645, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 645);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (646, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 646);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (647, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 647);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (648, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 648);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (649, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 649);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (650, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 650);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (651, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 651);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (41, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (652, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 652);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (653, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 653);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (654, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 654);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (655, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 655);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (42, strftime('%s', '2014-05-25'), strftime('%s', '2014-08-17'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (656, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 656);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (657, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 657);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (658, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 658);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (659, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 659);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (660, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 660);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (661, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 661);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (662, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 662);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (663, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 663);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (664, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 664);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (665, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 665);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (666, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 666);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (667, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 667);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (668, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 668);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (669, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 669);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (670, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 670);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (671, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 671);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (672, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 672);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (673, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 673);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (674, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 674);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (675, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 675);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (676, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 676);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (677, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 677);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (678, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 678);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (679, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 679);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (680, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 680);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (681, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 681);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (682, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 682);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (683, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 683);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (684, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 684);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (685, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 685);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (686, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 686);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (687, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 687);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (688, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 688);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (689, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 689);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (690, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 690);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (691, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 691);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (692, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 692);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (693, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 693);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (694, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 694);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (695, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 695);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (696, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 696);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (697, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 697);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (698, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 698);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (699, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 699);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (700, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 700);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (701, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 701);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (702, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 702);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (703, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 703);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (704, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 704);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (705, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 705);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (706, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 706);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (707, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 707);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (708, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 708);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (709, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 709);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (710, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 710);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (711, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 711);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (712, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 712);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (713, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 713);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (714, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 714);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (715, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 715);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (716, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 716);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (717, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 717);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (718, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 718);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (719, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 719);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (720, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 720);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (721, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 721);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (722, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 722);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (723, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 723);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (724, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 724);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (725, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 725);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (726, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 726);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (727, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 727);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (728, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 728);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (729, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 729);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (730, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 730);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (731, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 731);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (732, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 732);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (733, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 733);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (734, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 734);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (735, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 735);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (736, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 736);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (737, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 737);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (738, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 738);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (739, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 739);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (740, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 740);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (741, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 741);
