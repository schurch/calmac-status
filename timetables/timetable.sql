-- Remove everything
DELETE FROM Location;
DELETE FROM Calendar;
DELETE FROM CalendarTrip;
DELETE FROM Exclusion;
DELETE FROM Trip;
DELETE FROM Route;


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (13, "Tobermory", 56.623300, -6.063340);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (14, "Kilchoan", 56.688550, -6.093960);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (0, 1, 13, 14, 14);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (1, 1, 14, 13, 14);


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (1, "Glasgow Central", 55.860524, -4.258041);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (2, "Ardrossan Harbour", 55.639868, -4.821088);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (3, "Ardrossan Harbour", 55.640516, -4.823062);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (4, "Brodick Harbour", 55.576606, -5.139172);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (2, 2, 1, 2, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (3, 1, 3, 4, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (4, 1, 4, 3, 5);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (5, 2, 2, 1, 5);


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
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (15, "Tarbert (Loch Fyne)", 55.866150, -5.403760);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (16, "Lochranza", 55.707714, -5.301985);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (6, 1, 15, 16, 6);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (7, 1, 16, 15, 6);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (17, "Barra", 57.008400, -7.404750);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (18, "Eriskay", 57.070910, -7.308250);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (8, 1, 17, 18, 21);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (9, 1, 18, 17, 21);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (19, "Oban", 56.411580, -5.477250);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (20, "Castlebay", 56.953846, -7.488251);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (21, "Lochboisdale", 57.152201, -7.303969);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (10, 1, 19, 20, 20);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (11, 1, 20, 21, 20);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (12, 1, 21, 20, 20);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (13, 1, 20, 19, 20);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (5, "Glasgow Central", 55.860524, -4.258041);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (6, "Wemyss Bay", 55.876138, -4.889059);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (7, "Wemyss Bay", 55.875730, -4.890800);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (8, "Rothesay", 55.838480, -5.054210);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (14, 2, 5, 6, 3);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (15, 1, 7, 8, 3);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (16, 1, 8, 7, 3);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (17, 2, 6, 5, 3);


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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (23, strftime('%s', '2014-08-24'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (327, 22, 00, 22, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 7 AND DestinationLocationId = 8 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (23, 327);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (328, 21, 10, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 8 AND DestinationLocationId = 7 AND ServiceId = 3), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (23, 328);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (22, "Colintraive", 55.923353, -5.152758);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (23, "Rhubodach", 55.920670, -5.158880);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (18, 1, 22, 23, 4);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (19, 1, 23, 22, 4);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (24, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (329, 05, 30, 05, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 329);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (330, 06, 00, 06, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 330);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (331, 06, 30, 06, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 331);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (332, 07, 00, 07, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 332);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (333, 07, 30, 07, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 333);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (334, 07, 50, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 334);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (335, 08, 10, 08, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 335);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (336, 08, 30, 08, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 336);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (337, 09, 00, 09, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 337);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (338, 09, 30, 09, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 338);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (339, 09, 55, 10, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 339);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (340, 10, 15, 10, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 340);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (341, 10, 35, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 341);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (342, 11, 00, 11, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 342);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (343, 11, 30, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 343);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (344, 12, 00, 12, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 344);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (345, 12, 30, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 345);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (346, 13, 00, 13, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 346);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (347, 13, 30, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 347);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (348, 14, 10, 14, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 348);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (349, 14, 30, 14, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 349);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (350, 15, 00, 15, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 350);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (351, 15, 30, 15, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 351);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (352, 16, 05, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 352);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (353, 16, 30, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 353);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (354, 16, 50, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 354);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (355, 17, 10, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 355);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (356, 17, 30, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 356);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (357, 17, 50, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 357);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (358, 18, 10, 18, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 358);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (359, 18, 30, 18, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 359);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (360, 19, 00, 19, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 360);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (361, 19, 30, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 361);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (362, 20, 00, 20, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 362);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (363, 20, 30, 20, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 363);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (364, 20, 55, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 364);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (365, 05, 40, 05, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 365);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (366, 06, 10, 06, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 366);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (367, 06, 40, 06, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 367);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (368, 07, 10, 07, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 368);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (369, 07, 40, 07, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 369);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (370, 08, 00, 08, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 370);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (371, 08, 20, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 371);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (372, 08, 40, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 372);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (373, 09, 10, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 373);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (374, 09, 40, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 374);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (375, 10, 05, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 375);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (376, 10, 25, 10, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 376);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (377, 10, 45, 10, 50, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 377);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (378, 11, 10, 11, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 378);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (379, 11, 40, 11, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 379);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (380, 12, 10, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 380);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (381, 12, 40, 12, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 381);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (382, 13, 10, 13, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 382);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (383, 13, 40, 13, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 383);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (384, 14, 20, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 384);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (385, 14, 40, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 385);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (386, 15, 10, 15, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 386);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (387, 15, 40, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 387);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (388, 16, 15, 16, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 388);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (389, 16, 40, 16, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 389);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (390, 17, 00, 17, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 390);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (391, 17, 20, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 391);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (392, 17, 40, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 392);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (393, 18, 00, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 393);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (394, 18, 20, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 394);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (395, 18, 40, 18, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 395);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (396, 19, 10, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 396);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (397, 19, 40, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 397);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (398, 20, 10, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 398);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (399, 20, 40, 20, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 399);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (400, 21, 00, 21, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 400);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (25, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (401, 05, 30, 05, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 401);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (402, 06, 00, 06, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 402);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (403, 06, 30, 06, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 403);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (404, 07, 00, 07, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 404);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (405, 07, 30, 07, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 405);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (406, 08, 00, 08, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 406);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (407, 08, 30, 08, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 407);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (408, 09, 00, 09, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 408);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (409, 09, 30, 09, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 409);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (410, 10, 00, 10, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 410);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (411, 10, 30, 10, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 411);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (412, 11, 00, 11, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 412);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (413, 11, 30, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 413);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (414, 12, 00, 12, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 414);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (415, 12, 30, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 415);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (416, 13, 00, 13, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 416);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (417, 13, 30, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 417);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (418, 14, 00, 14, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 418);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (419, 14, 30, 14, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 419);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (420, 15, 00, 15, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 420);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (421, 15, 30, 15, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 421);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (422, 16, 00, 16, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 422);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (423, 16, 30, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 423);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (424, 17, 00, 17, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 424);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (425, 17, 30, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 425);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (426, 18, 00, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 426);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (427, 18, 30, 18, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 427);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (428, 19, 00, 19, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 428);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (429, 19, 30, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 429);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (430, 20, 00, 20, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 430);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (431, 20, 30, 20, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 431);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (432, 20, 55, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 432);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (433, 05, 40, 05, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 433);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (434, 06, 10, 06, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 434);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (435, 06, 40, 06, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 435);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (436, 07, 10, 07, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 436);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (437, 07, 40, 07, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 437);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (438, 08, 10, 08, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 438);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (439, 08, 40, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 439);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (440, 09, 10, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 440);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (441, 09, 40, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 441);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (442, 10, 10, 10, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 442);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (443, 10, 40, 10, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 443);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (444, 11, 10, 11, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 444);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (445, 11, 40, 11, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 445);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (446, 12, 10, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 446);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (447, 12, 40, 12, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 447);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (448, 13, 10, 13, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 448);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (449, 13, 40, 13, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 449);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (450, 14, 10, 14, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 450);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (451, 14, 40, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 451);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (452, 15, 10, 15, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 452);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (453, 15, 40, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 453);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (454, 16, 10, 16, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 454);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (455, 16, 40, 16, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 455);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (456, 17, 10, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 456);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (457, 17, 40, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 457);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (458, 18, 10, 18, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 458);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (459, 18, 40, 18, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 459);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (460, 19, 10, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 460);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (461, 19, 40, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 461);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (462, 20, 10, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 462);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (463, 20, 40, 20, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 463);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (464, 21, 00, 21, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 464);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (26, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (465, 08, 30, 08, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 465);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (466, 09, 00, 09, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 466);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (467, 09, 30, 09, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 467);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (468, 10, 00, 10, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 468);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (469, 10, 30, 10, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 469);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (470, 11, 00, 11, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 470);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (471, 11, 30, 11, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 471);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (472, 12, 00, 12, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 472);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (473, 12, 30, 12, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 473);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (474, 13, 00, 13, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 474);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (475, 13, 30, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 475);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (476, 14, 00, 14, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 476);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (477, 14, 30, 14, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 477);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (478, 15, 00, 15, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 478);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (479, 15, 30, 15, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 479);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (480, 16, 00, 16, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 480);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (481, 16, 30, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 481);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (482, 17, 00, 17, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 482);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (483, 17, 30, 17, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 483);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (484, 18, 00, 18, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 484);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (485, 18, 30, 18, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 485);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (486, 19, 00, 19, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 486);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (487, 19, 30, 19, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 487);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (488, 20, 00, 20, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 488);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (489, 20, 30, 20, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 489);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (490, 20, 55, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 22 AND DestinationLocationId = 23 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 490);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (491, 08, 40, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 491);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (492, 09, 10, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 492);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (493, 09, 40, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 493);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (494, 10, 10, 10, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 494);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (495, 10, 40, 10, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 495);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (496, 11, 10, 11, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 496);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (497, 11, 40, 11, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 497);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (498, 12, 10, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 498);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (499, 12, 40, 12, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 499);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (500, 13, 10, 13, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 500);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (501, 13, 40, 13, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 501);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (502, 14, 10, 14, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 502);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (503, 14, 40, 14, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 503);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (504, 15, 10, 15, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 504);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (505, 15, 40, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 505);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (506, 16, 10, 16, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 506);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (507, 16, 40, 16, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 507);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (508, 17, 10, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 508);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (509, 17, 40, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 509);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (510, 18, 10, 18, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 510);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (511, 18, 40, 18, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 511);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (512, 19, 10, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 512);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (513, 19, 40, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 513);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (514, 20, 10, 20, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 514);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (515, 20, 40, 20, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 515);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (516, 21, 00, 21, 05, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 23 AND DestinationLocationId = 22 AND ServiceId = 4), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 516);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (24, "Coll", 56.615059, -6.524241);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (25, "Tiree", 56.508324, -6.798924);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (20, 1, 24, 25, 16);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (21, 1, 25, 24, 16);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (26, "Colonsay", 56.068580, -6.188190);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (27, "Port Askaig", 55.847707, -6.105102);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (28, "Kennacraig", 55.806700, -5.483400);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (22, 1, 19, 26, 10);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (23, 1, 28, 27, 10);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (24, 1, 27, 28, 10);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (25, 1, 26, 27, 10);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (26, 1, 26, 19, 10);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (27, 1, 27, 28, 10);


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (29, "Portavadie", 55.876490, -5.316540);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (28, 1, 15, 29, 2);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (29, 1, 29, 15, 2);


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (11, "Largs", 55.794945, -4.871013);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (12, "Cumbrae Slip", 55.786710, -4.898246);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (30, 1, 11, 12, 7);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (31, 1, 12, 11, 7);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (27, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (517, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 517);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (518, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 518);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (519, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 519);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (520, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 520);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (521, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 521);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (522, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 522);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (523, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 523);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (524, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 524);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (525, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 525);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (526, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 526);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (527, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 527);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (528, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 528);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (529, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 529);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (530, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 530);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (531, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 531);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (532, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 532);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (533, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 533);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (534, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 534);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (535, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 535);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (536, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 536);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (537, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 537);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (538, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 538);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (539, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 539);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (540, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 540);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (541, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 541);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (542, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 542);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (543, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 543);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (544, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 544);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (545, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 545);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (546, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 546);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (547, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 547);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (548, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 548);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (549, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 549);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (550, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 550);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (551, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 551);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (552, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 552);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (553, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 553);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (554, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 554);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (555, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 555);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (556, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 556);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (557, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 557);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (558, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 558);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (559, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 559);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (560, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 560);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (561, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 561);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (562, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 562);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (563, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 563);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (564, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 564);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (565, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 565);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (566, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 566);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (28, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (567, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 567);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (568, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 568);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (569, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 569);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (570, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 570);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (571, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 571);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (572, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 572);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (573, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 573);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (574, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 574);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (575, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 575);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (576, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 576);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (577, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 577);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (578, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 578);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (579, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 579);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (580, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 580);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (581, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 581);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (582, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 582);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (583, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 583);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (584, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 584);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (585, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 585);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (586, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 586);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (587, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 587);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (588, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 588);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (589, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 589);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (590, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 590);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (591, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 591);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (592, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 592);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (593, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 593);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (594, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 594);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (595, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 595);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (596, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 596);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (597, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 597);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (598, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 598);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (599, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 599);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (600, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 600);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (601, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 601);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (602, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 602);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (603, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 603);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (604, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 604);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (605, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 605);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (606, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 606);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (607, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 607);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (608, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 608);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (609, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 609);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (610, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 610);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (611, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 611);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (612, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 612);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (613, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 613);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (614, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 614);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (615, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 615);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (616, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 616);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (29, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (617, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 617);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (618, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 618);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (619, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 619);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (620, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 620);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (30, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (621, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 621);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (622, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 622);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (623, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 623);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (624, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 624);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (31, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-18'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (625, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 625);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (626, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 626);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (627, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 627);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (628, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 628);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (629, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 629);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (630, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 630);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (631, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 631);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (632, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 632);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (633, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 633);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (634, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 634);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (635, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 635);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (636, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 636);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (637, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 637);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (638, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 638);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (639, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 639);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (640, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 640);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (641, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 641);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (642, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 642);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (643, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 643);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (644, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 644);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (645, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 645);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (646, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 646);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (647, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 647);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (648, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 648);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (649, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 649);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (650, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 650);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (651, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 651);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (652, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 652);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (653, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 653);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (654, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 654);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (655, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 655);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (656, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 656);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (657, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 657);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (658, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 658);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (659, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 659);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (660, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 660);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (661, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 661);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (662, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 662);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (663, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 663);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (664, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 664);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (32, strftime('%s', '2014-08-24'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (665, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 665);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (666, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 666);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (667, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 667);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (668, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 668);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (669, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 669);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (670, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 670);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (671, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 671);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (672, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 672);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (673, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 673);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (674, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 674);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (675, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 675);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (676, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 676);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (677, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 677);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (678, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 678);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (679, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 679);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (680, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 680);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (681, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 681);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (682, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 682);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (683, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 683);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (684, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 684);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (685, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 685);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (686, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 686);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (687, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 687);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (688, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 688);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (689, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 689);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (690, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 690);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (691, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 691);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (692, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 692);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (693, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 693);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (694, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 694);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (695, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 695);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (696, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 696);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (697, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 697);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (698, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 698);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (699, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 699);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (700, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 700);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (701, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 701);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (702, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 702);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (703, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 703);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (704, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 704);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (33, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (705, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 705);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (706, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 706);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (707, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 707);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (708, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 708);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (709, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 709);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (710, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 710);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (711, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 711);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (712, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 712);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (713, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 713);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (714, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 714);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (715, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 715);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (716, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 716);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (717, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 717);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (718, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 718);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (719, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 719);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (720, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 720);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (721, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 721);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (722, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 722);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (723, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 723);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (724, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 724);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (725, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 725);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (726, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 726);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (727, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 727);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (728, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 728);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (729, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 729);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (730, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 730);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (731, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 731);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (732, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 732);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (733, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 733);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (734, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 734);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (735, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 735);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (736, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 736);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (737, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 737);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (738, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 738);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (739, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 739);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (740, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 740);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (741, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 741);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (742, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 742);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (743, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 743);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (744, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 744);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (745, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 745);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (746, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 746);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (747, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 747);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (748, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 748);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (749, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 749);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (750, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 750);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (751, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 751);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (752, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 752);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (753, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 753);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (754, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 754);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (755, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 755);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (756, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 756);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (757, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 757);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (758, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 758);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (759, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 759);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (760, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 760);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (761, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 761);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (762, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 762);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (763, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 763);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (764, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 764);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (765, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 765);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (766, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 766);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (767, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 767);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (768, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 768);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (769, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 769);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (770, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 770);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (771, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 771);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (772, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 772);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (773, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 773);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (774, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 774);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (775, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 775);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (776, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 776);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (777, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 777);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (778, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 778);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (779, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 779);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (780, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 780);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (781, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 781);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (782, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 782);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (783, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 783);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (784, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 784);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (785, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 785);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (786, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 786);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (787, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 787);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (788, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 788);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (789, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 789);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (790, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 790);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (791, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 791);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (792, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 792);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (793, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 793);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (794, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 794);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (795, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 795);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (796, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 796);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (797, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 797);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (798, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 798);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (799, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 799);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (800, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 800);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (801, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 801);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (802, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 802);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (803, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 803);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (34, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (804, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 804);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (805, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 805);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (806, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 806);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (807, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 807);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (35, strftime('%s', '2014-05-25'), strftime('%s', '2014-08-17'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (808, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 808);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (809, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 809);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (810, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 810);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (811, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 811);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (812, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 812);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (813, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 813);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (814, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 814);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (815, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 815);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (816, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 816);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (817, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 817);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (818, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 818);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (819, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 819);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (820, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 820);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (821, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 821);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (822, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 822);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (823, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 823);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (824, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 824);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (825, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 825);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (826, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 826);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (827, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 827);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (828, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 828);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (829, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 829);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (830, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 830);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (831, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 831);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (832, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 832);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (833, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 833);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (834, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 834);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (835, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 835);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (836, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 836);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (837, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 837);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (838, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 838);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (839, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 839);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (840, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 840);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (841, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 841);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (842, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 842);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (843, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 843);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (844, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 844);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (845, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 845);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (846, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 846);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (847, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 847);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (848, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 848);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (849, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 849);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (850, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 850);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (851, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 851);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (852, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 852);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (853, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 853);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (854, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 854);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (855, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 855);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (856, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 856);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (857, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 857);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (858, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 858);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (859, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 859);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (860, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 860);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (861, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 861);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (862, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 862);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (863, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 863);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (864, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 864);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (865, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 865);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (866, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 866);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (867, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 867);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (868, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 868);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (869, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 869);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (870, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 870);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (871, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 871);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (872, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 872);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (873, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 873);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (874, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 874);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (875, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 875);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (876, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 876);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (877, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 877);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (878, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 878);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (879, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 879);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (880, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 880);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (881, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 881);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (882, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 882);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (883, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 883);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (884, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 884);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (885, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 885);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (886, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 886);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (887, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 887);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (888, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 888);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (889, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 889);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (890, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 890);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (891, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 891);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (892, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 892);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (893, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 893);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (30, "Tayinloan", 55.657550, -5.669100);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (31, "Gigha", 55.678637, -5.733597);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (32, 1, 30, 31, 8);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (33, 1, 31, 30, 8);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (32, "Uig", 57.586340, -6.376447);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (33, "Tarbert", 57.896848, -6.798668);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (34, 1, 32, 33, 24);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (35, 1, 33, 32, 24);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (36, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (894, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 894);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (895, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 895);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (896, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 896);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (37, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (897, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 897);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (898, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 898);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (899, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 899);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (38, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (900, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 900);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (901, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 901);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (902, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 902);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (39, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (903, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 903);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (904, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 904);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (905, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 905);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (40, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (906, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 906);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (907, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 907);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (908, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 908);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (41, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-21'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (909, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 909);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (910, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 910);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (911, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 911);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (42, strftime('%s', '2014-08-30'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (912, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 912);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (913, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 913);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (914, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 914);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (43, strftime('%s', '2014-06-28'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (915, 09, 45, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 915);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (916, 18, 40, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 916);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (917, 11, 55, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 917);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (918, 21, 00, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 918);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (44, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (919, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 919);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (920, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 920);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (45, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (921, 05, 30, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (45, 921);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (46, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (922, 20, 00, 21, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 922);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (47, strftime('%s', '2014-04-06'), strftime('%s', '2014-05-04'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (923, 18, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 923);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (924, 09, 00, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 924);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (48, strftime('%s', '2014-09-21'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (925, 18, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (48, 925);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (926, 09, 00, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (48, 926);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (34, "Fionnphort", 56.325611, -6.369403);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (35, "Iona", 56.330225, -6.392257);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (36, 1, 34, 35, 13);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (37, 1, 35, 34, 13);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (36, "Port Ellen", 55.627810, -6.189810);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (38, 1, 28, 27, 9);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (39, 1, 28, 36, 9);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (40, 1, 27, 28, 9);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (41, 1, 36, 28, 9);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (9, "Stornoway", 58.206822, -6.386586);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (10, "Ullapool Bay", 57.894939, -5.160442);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (42, 1, 9, 10, 25);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (43, 1, 10, 9, 25);



-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (49, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (927, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 927);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (928, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 928);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (929, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 929);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (930, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 930);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (50, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (931, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 931);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (932, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 932);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (933, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 933);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (934, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 934);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (51, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (935, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (51, 935);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (936, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (51, 936);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (52, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (937, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 937);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (938, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 938);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (939, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 939);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (940, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 940);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (53, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (941, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 941);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (942, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 942);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (943, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 943);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (944, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 944);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (54, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (945, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 945);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (946, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 946);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (55, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 1, 1, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (947, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 947);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (948, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 948);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (949, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 949);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (950, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 950);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (56, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 1, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (951, 06, 00, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 951);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (952, 13, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 952);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (953, 19, 45, 22, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 953);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (954, 09, 30, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 954);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (955, 16, 30, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 955);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (956, 23, 00, 01, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), 'Arrives following morning.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 956);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (57, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (957, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 957);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (958, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 958);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (959, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 959);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (960, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 960);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (58, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (961, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 961);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (962, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 962);



-- Locations

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (44, 1, 9, 10, 35);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (45, 1, 10, 9, 35);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (37, "Lismore", 56.511159, -5.492068);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (46, 1, 19, 37, 15);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (47, 1, 37, 19, 15);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (38, "Craignure", 56.470740, -5.706290);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (48, 1, 19, 38, 11);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (49, 1, 38, 19, 11);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (59, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (963, 07, 00, 07, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 963);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (964, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 964);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (965, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 965);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (966, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 966);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (967, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 967);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (968, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 968);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (969, 08, 00, 08, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 969);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (970, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 970);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (971, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 971);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (972, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 972);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (973, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 973);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (974, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 974);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (60, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 1, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (975, 07, 45, 08, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 975);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (976, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 976);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (977, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 977);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (978, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 978);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (979, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 979);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (980, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 980);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (981, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 981);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (982, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 982);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (983, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 983);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (984, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 984);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (985, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 985);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (986, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 986);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (61, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (987, 07, 45, 08, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 987);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (988, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 988);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (989, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 989);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (990, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 990);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (991, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 991);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (992, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 992);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (993, 22, 30, 23, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 993);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (994, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 994);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (995, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 995);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (996, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 996);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (997, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 997);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (998, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 998);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (999, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 999);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (62, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1000, 07, 30, 08, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1000);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1001, 09, 30, 10, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1001);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1002, 11, 45, 12, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1002);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1003, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1003);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1004, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1004);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1005, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1005);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1006, 06, 45, 07, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1006);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1007, 08, 30, 09, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1007);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1008, 10, 30, 11, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1008);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1009, 12, 45, 13, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1009);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1010, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1010);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1011, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 1011);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (63, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1012, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1012);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1013, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1013);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1014, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1014);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1015, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1015);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1016, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1016);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1017, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1017);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1018, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1018);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1019, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1019);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1020, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 1020);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (64, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1021, 20, 00, 20, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1021);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (65, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1022, 06, 45, 07, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1022);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (66, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1023, 20, 00, 20, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1023);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1024, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1024);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (67, strftime('%s', '2014-05-11'), strftime('%s', '2014-09-14'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1025, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1025);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1026, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1026);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (50, "Lochaline", 56.536660, -5.775020);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (51, "Fishnish", 56.514720, -5.810320);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (50, 1, 50, 51, 12);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (51, 1, 51, 50, 12);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (68, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1027, 07, 00, 07, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1027);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1028, 07, 45, 08, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1028);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1029, 08, 45, 09, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1029);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1030, 09, 40, 09, 58, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1030);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1031, 10, 25, 10, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1031);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1032, 11, 10, 11, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1032);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1033, 11, 55, 12, 13, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1033);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1034, 12, 45, 13, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1034);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1035, 14, 25, 14, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1035);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1036, 15, 15, 15, 33, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1036);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1037, 16, 00, 16, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1037);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1038, 16, 45, 17, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1038);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1039, 17, 45, 18, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1039);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1040, 07, 25, 07, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1040);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1041, 08, 10, 08, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1041);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1042, 09, 10, 09, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1042);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1043, 10, 00, 10, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1043);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1044, 10, 45, 11, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1044);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1045, 11, 30, 11, 48, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1045);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1046, 12, 15, 12, 33, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1046);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1047, 13, 10, 13, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1047);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1048, 14, 50, 15, 08, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1048);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1049, 15, 40, 15, 58, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1049);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1050, 16, 25, 16, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1050);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1051, 17, 10, 17, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1051);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1052, 18, 10, 18, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1052);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (69, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1053, 08, 45, 09, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1053);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1054, 10, 00, 10, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1054);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1055, 10, 45, 11, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1055);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1056, 12, 45, 13, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1056);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1057, 13, 45, 14, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1057);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1058, 14, 45, 15, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1058);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1059, 16, 00, 16, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1059);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1060, 16, 45, 17, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1060);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1061, 17, 45, 18, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1061);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1062, 09, 10, 09, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1062);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1063, 10, 25, 10, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1063);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1064, 11, 10, 11, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1064);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1065, 13, 10, 13, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1065);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1066, 14, 10, 14, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1066);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1067, 15, 10, 15, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1067);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1068, 16, 25, 16, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1068);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1069, 17, 10, 17, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1069);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1070, 18, 05, 18, 23, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1070);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (70, strftime('%s', '2014-04-04'), strftime('%s', '2014-09-30'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1071, 18, 35, 18, 53, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 1071);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1072, 19, 00, 19, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 1072);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (39, "Lochmaddy", 57.596518, -7.157672);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (52, 1, 32, 39, 22);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (53, 1, 39, 32, 22);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (71, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1073, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 1073);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1074, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 1074);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1075, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 1075);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (72, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1076, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1076);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1077, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1077);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1078, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1078);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (73, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1079, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1079);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1080, 19, 00, 20, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1080);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1081, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1081);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1082, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1082);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (74, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1083, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 1083);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1084, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 1084);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1085, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 1085);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (75, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1086, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 1086);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1087, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 1087);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1088, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 1088);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (76, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-21'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1089, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 1089);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1090, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 1090);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1091, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 1091);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (77, strftime('%s', '2014-08-30'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1092, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1092);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1093, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1093);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1094, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1094);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (78, strftime('%s', '2014-06-28'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1095, 14, 15, 16, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (78, 1095);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1096, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (78, 1096);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1097, 16, 25, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (78, 1097);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (79, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1098, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (79, 1098);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (80, strftime('%s', '2014-06-27'), strftime('%s', '2014-08-29'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1099, 22, 00, 23, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (80, 1099);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1100, 20, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (80, 1100);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (81, strftime('%s', '2014-06-27'), strftime('%s', '2014-08-29'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1101, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (81, 1101);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1102, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (81, 1102);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1103, 20, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (81, 1103);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (82, strftime('%s', '2014-04-06'), strftime('%s', '2014-05-04'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1104, 11, 15, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (82, 1104);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (83, strftime('%s', '2014-09-14'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1105, 11, 15, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (83, 1105);




-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (40, "Berneray", 57.702302, -7.180422);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (41, "Leverburgh", 57.766540, -7.025258);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (54, 1, 40, 41, 23);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (55, 1, 41, 40, 23);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (42, "Sconser", 57.313967, -6.110329);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (43, "Raasay", 57.351034, -6.082454);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (56, 1, 42, 43, 17);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (57, 1, 43, 42, 17);


-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (44, "Mallaig", 57.006834, -5.828069);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (45, "Armadale", 57.064596, -5.894743);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (58, 1, 44, 45, 18);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (59, 1, 45, 44, 18);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (46, "Eigg", 56.877200, -6.129950);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (47, "Muck", 56.833640, -6.226905);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (48, "Rum", 57.010862, -6.264991);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (49, "Canna", 57.056171, -6.490296);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (60, 1, 44, 46, 19);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (61, 1, 44, 47, 19);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (62, 1, 44, 48, 19);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (63, 1, 48, 49, 19);



-- Locations

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (64, 1, 44, 21, 37);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (65, 1, 21, 44, 37);


