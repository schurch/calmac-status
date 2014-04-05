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


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (27, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (517, 09, 00, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 517);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (518, 10, 15, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 518);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (519, 11, 15, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 519);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (520, 12, 15, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 520);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (521, 13, 15, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 521);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (522, 14, 15, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 522);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (523, 15, 15, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 523);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (524, 16, 15, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 524);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (525, 17, 15, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 525);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (526, 09, 45, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 526);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (527, 10, 45, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 527);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (528, 11, 45, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 528);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (529, 12, 45, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 529);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (530, 13, 45, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 530);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (531, 14, 45, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 531);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (532, 15, 45, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 532);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (533, 16, 45, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 533);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (534, 17, 45, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 534);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (28, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (535, 08, 00, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 535);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (536, 08, 30, 08, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 536);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (29, strftime('%s', '2014-04-04'), strftime('%s', '2014-09-14'), 1, 1, 1, 1, 1, 1, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (537, 18, 15, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 537);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (538, 18, 45, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 538);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (30, strftime('%s', '2014-06-16'), strftime('%s', '2014-08-17'), 1, 1, 1, 1, 1, 1, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (539, 19, 15, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 15 AND DestinationLocationId = 29 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 539);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (540, 19, 45, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 29 AND DestinationLocationId = 15 AND ServiceId = 2), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 540);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (11, "Largs", 55.794945, -4.871013);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (12, "Cumbrae Slip", 55.786710, -4.898246);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (30, 1, 11, 12, 7);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (31, 1, 12, 11, 7);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (31, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (541, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 541);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (542, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 542);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (543, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 543);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (544, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 544);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (545, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 545);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (546, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 546);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (547, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 547);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (548, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 548);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (549, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 549);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (550, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 550);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (551, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 551);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (552, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 552);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (553, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 553);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (554, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 554);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (555, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 555);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (556, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 556);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (557, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 557);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (558, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 558);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (559, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 559);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (560, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 560);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (561, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 561);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (562, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 562);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (563, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 563);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (564, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 564);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (565, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 565);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (566, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 566);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (567, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 567);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (568, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 568);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (569, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 569);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (570, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 570);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (571, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 571);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (572, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 572);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (573, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 573);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (574, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 574);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (575, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 575);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (576, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 576);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (577, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 577);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (578, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 578);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (579, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 579);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (580, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 580);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (581, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 581);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (582, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 582);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (583, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 583);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (584, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 584);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (585, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 585);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (586, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 586);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (587, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 587);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (588, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 588);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (589, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 589);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (590, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 590);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (32, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (591, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 591);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (592, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 592);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (593, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 593);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (594, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 594);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (595, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 595);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (596, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 596);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (597, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 597);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (598, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 598);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (599, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 599);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (600, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 600);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (601, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 601);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (602, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 602);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (603, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 603);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (604, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 604);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (605, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 605);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (606, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 606);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (607, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 607);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (608, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 608);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (609, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 609);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (610, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 610);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (611, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 611);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (612, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 612);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (613, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 613);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (614, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 614);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (615, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 615);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (616, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 616);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (617, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 617);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (618, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 618);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (619, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 619);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (620, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 620);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (621, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 621);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (622, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 622);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (623, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 623);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (624, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 624);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (625, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 625);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (626, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 626);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (627, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 627);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (628, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 628);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (629, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 629);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (630, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 630);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (631, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 631);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (632, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 632);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (633, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 633);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (634, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 634);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (635, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 635);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (636, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 636);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (637, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 637);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (638, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 638);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (639, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 639);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (640, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 640);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (33, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (641, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 641);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (642, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 642);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (643, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 643);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (644, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 644);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (34, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (645, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 645);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (646, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 646);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (647, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 647);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (648, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 648);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (35, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-18'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (649, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 649);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (650, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 650);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (651, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 651);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (652, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 652);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (653, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 653);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (654, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 654);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (655, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 655);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (656, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 656);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (657, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 657);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (658, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 658);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (659, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 659);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (660, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 660);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (661, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 661);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (662, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 662);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (663, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 663);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (664, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 664);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (665, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 665);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (666, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 666);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (667, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 667);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (668, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 668);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (669, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 669);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (670, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 670);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (671, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 671);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (672, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 672);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (673, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 673);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (674, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 674);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (675, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 675);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (676, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 676);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (677, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 677);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (678, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 678);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (679, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 679);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (680, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 680);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (681, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 681);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (682, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 682);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (683, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 683);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (684, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 684);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (685, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 685);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (686, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 686);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (687, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 687);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (688, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 688);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (36, strftime('%s', '2014-08-24'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (689, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 689);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (690, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 690);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (691, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 691);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (692, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 692);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (693, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 693);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (694, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 694);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (695, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 695);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (696, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 696);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (697, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 697);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (698, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 698);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (699, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 699);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (700, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 700);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (701, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 701);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (702, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 702);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (703, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 703);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (704, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 704);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (705, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 705);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (706, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 706);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (707, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 707);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (708, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 708);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (709, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 709);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (710, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 710);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (711, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 711);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (712, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 712);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (713, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 713);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (714, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 714);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (715, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 715);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (716, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 716);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (717, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 717);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (718, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 718);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (719, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 719);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (720, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 720);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (721, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 721);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (722, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 722);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (723, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 723);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (724, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 724);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (725, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 725);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (726, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 726);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (727, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 727);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (728, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 728);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (37, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (729, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 729);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (730, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 730);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (731, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 731);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (732, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 732);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (733, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 733);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (734, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 734);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (735, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 735);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (736, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 736);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (737, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 737);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (738, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 738);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (739, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 739);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (740, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 740);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (741, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 741);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (742, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 742);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (743, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 743);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (744, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 744);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (745, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 745);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (746, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 746);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (747, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 747);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (748, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 748);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (749, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 749);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (750, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 750);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (751, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 751);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (752, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 752);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (753, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 753);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (754, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 754);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (755, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 755);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (756, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 756);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (757, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 757);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (758, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 758);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (759, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 759);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (760, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 760);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (761, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 761);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (762, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 762);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (763, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 763);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (764, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 764);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (765, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 765);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (766, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 766);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (767, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 767);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (768, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 768);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (769, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 769);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (770, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 770);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (771, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 771);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (772, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 772);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (773, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 773);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (774, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 774);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (775, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 775);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (776, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 776);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (777, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 777);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (778, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 778);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (779, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 779);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (780, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 780);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (781, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 781);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (782, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 782);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (783, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 783);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (784, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 784);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (785, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 785);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (786, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 786);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (787, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 787);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (788, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 788);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (789, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 789);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (790, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 790);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (791, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 791);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (792, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 792);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (793, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 793);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (794, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 794);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (795, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 795);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (796, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 796);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (797, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 797);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (798, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 798);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (799, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 799);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (800, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 800);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (801, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 801);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (802, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 802);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (803, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 803);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (804, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 804);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (805, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 805);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (806, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 806);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (807, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 807);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (808, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 808);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (809, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 809);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (810, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 810);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (811, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 811);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (812, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 812);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (813, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 813);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (814, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 814);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (815, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 815);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (816, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 816);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (817, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 817);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (818, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 818);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (819, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 819);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (820, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 820);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (821, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 821);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (822, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 822);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (823, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 823);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (824, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 824);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (825, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 825);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (826, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 826);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (827, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 827);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (38, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (828, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 828);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (829, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 829);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (830, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 830);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (831, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 831);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (39, strftime('%s', '2014-05-25'), strftime('%s', '2014-08-17'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (832, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 832);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (833, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 833);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (834, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 834);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (835, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 835);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (836, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 836);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (837, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 837);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (838, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 838);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (839, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 839);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (840, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 840);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (841, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 841);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (842, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 842);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (843, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 843);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (844, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 844);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (845, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 845);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (846, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 846);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (847, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 847);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (848, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 848);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (849, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 849);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (850, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 850);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (851, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 851);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (852, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 852);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (853, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 853);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (854, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 854);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (855, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 855);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (856, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 856);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (857, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 857);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (858, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 858);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (859, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 859);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (860, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 860);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (861, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 861);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (862, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 862);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (863, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 863);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (864, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 864);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (865, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 865);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (866, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 866);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (867, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 867);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (868, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 868);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (869, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 869);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (870, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 870);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (871, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 871);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (872, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 872);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (873, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 873);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (874, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 874);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (875, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 875);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (876, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 876);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (877, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 877);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (878, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 878);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (879, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 879);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (880, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 880);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (881, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 881);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (882, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 882);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (883, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 883);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (884, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 884);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (885, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 885);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (886, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 886);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (887, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 887);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (888, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 888);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (889, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 889);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (890, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 890);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (891, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 891);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (892, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 892);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (893, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 893);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (894, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 894);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (895, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 895);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (896, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 896);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (897, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 897);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (898, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 898);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (899, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 899);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (900, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 900);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (901, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 901);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (902, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 902);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (903, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 903);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (904, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 904);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (905, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 905);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (906, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 906);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (907, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 907);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (908, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 908);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (909, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 909);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (910, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 910);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (911, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 911);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (912, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 912);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (913, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 913);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (914, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 914);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (915, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 915);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (916, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 916);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (917, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 917);



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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (40, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (918, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 918);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (919, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 919);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (920, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 920);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (41, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (921, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 921);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (922, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 922);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (923, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 923);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (42, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (924, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 924);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (925, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 925);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (926, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 926);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (43, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (927, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 927);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (928, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 928);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (929, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 929);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (44, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (930, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 930);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (931, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 931);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (932, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 932);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (45, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-21'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (933, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (45, 933);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (934, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (45, 934);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (935, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (45, 935);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (46, strftime('%s', '2014-08-30'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (936, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 936);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (937, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 937);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (938, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 938);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (47, strftime('%s', '2014-06-28'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (939, 09, 45, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 939);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (940, 18, 40, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 940);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (941, 11, 55, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 941);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (942, 21, 00, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 942);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (48, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (943, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (48, 943);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (944, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (48, 944);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (49, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (945, 05, 30, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 945);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (50, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (946, 20, 00, 21, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 946);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (51, strftime('%s', '2014-04-06'), strftime('%s', '2014-05-04'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (947, 18, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (51, 947);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (948, 09, 00, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (51, 948);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (52, strftime('%s', '2014-09-21'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (949, 18, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 949);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (950, 09, 00, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 950);



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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (53, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (951, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 951);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (952, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 952);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (953, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 953);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (954, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 954);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (54, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (955, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 955);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (956, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 956);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (957, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 957);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (958, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 958);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (55, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (959, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 959);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (960, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 960);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (56, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (961, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 961);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (962, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 962);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (963, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 963);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (964, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 964);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (57, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (965, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 965);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (966, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 966);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (967, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 967);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (968, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 968);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (58, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (969, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 969);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (970, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 970);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (59, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 1, 1, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (971, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 971);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (972, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 972);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (973, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 973);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (974, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 974);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (60, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 1, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (975, 06, 00, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 975);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (976, 13, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 976);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (977, 19, 45, 22, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 977);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (978, 09, 30, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 978);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (979, 16, 30, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 979);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (980, 23, 00, 01, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), 'Arrives following morning.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 980);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (61, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (981, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 981);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (982, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 982);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (983, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 983);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (984, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 984);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (62, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (985, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 985);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (986, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 986);



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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (63, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (987, 07, 00, 07, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 987);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (988, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 988);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (989, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 989);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (990, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 990);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (991, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 991);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (992, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 992);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (993, 08, 00, 08, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 993);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (994, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 994);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (995, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 995);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (996, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 996);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (997, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 997);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (998, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 998);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (64, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 1, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (999, 07, 45, 08, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 999);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1000, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1000);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1001, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1001);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1002, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1002);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1003, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1003);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1004, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1004);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1005, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1005);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1006, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1006);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1007, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1007);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1008, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1008);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1009, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1009);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1010, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 1010);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (65, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1011, 07, 45, 08, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1011);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1012, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1012);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1013, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1013);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1014, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1014);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1015, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1015);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1016, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1016);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1017, 22, 30, 23, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1017);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1018, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1018);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1019, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1019);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1020, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1020);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1021, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1021);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1022, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1022);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1023, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 1023);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (66, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1024, 07, 30, 08, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1024);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1025, 09, 30, 10, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1025);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1026, 11, 45, 12, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1026);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1027, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1027);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1028, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1028);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1029, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1029);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1030, 06, 45, 07, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1030);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1031, 08, 30, 09, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1031);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1032, 10, 30, 11, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1032);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1033, 12, 45, 13, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1033);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1034, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1034);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1035, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 1035);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (67, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1036, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1036);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1037, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1037);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1038, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1038);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1039, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1039);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1040, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1040);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1041, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1041);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1042, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1042);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1043, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1043);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1044, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 1044);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (68, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1045, 20, 00, 20, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 1045);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (69, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1046, 06, 45, 07, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 1046);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (70, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1047, 20, 00, 20, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 1047);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1048, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 1048);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (71, strftime('%s', '2014-05-11'), strftime('%s', '2014-09-14'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1049, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 1049);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1050, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 1050);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (50, "Lochaline", 56.536660, -5.775020);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (51, "Fishnish", 56.514720, -5.810320);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (50, 1, 50, 51, 12);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (51, 1, 51, 50, 12);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (72, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1051, 07, 00, 07, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1051);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1052, 07, 45, 08, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1052);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1053, 08, 45, 09, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1053);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1054, 09, 40, 09, 58, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1054);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1055, 10, 25, 10, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1055);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1056, 11, 10, 11, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1056);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1057, 11, 55, 12, 13, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1057);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1058, 12, 45, 13, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1058);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1059, 14, 25, 14, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1059);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1060, 15, 15, 15, 33, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1060);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1061, 16, 00, 16, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1061);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1062, 16, 45, 17, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1062);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1063, 17, 45, 18, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1063);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1064, 07, 25, 07, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1064);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1065, 08, 10, 08, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1065);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1066, 09, 10, 09, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1066);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1067, 10, 00, 10, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1067);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1068, 10, 45, 11, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1068);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1069, 11, 30, 11, 48, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1069);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1070, 12, 15, 12, 33, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1070);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1071, 13, 10, 13, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1071);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1072, 14, 50, 15, 08, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1072);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1073, 15, 40, 15, 58, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), 'Passenger numbers may be restricted.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1073);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1074, 16, 25, 16, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1074);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1075, 17, 10, 17, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1075);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1076, 18, 10, 18, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 1076);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (73, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1077, 08, 45, 09, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1077);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1078, 10, 00, 10, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1078);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1079, 10, 45, 11, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1079);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1080, 12, 45, 13, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1080);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1081, 13, 45, 14, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1081);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1082, 14, 45, 15, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1082);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1083, 16, 00, 16, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1083);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1084, 16, 45, 17, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1084);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1085, 17, 45, 18, 03, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1085);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1086, 09, 10, 09, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1086);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1087, 10, 25, 10, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1087);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1088, 11, 10, 11, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1088);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1089, 13, 10, 13, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1089);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1090, 14, 10, 14, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1090);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1091, 15, 10, 15, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1091);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1092, 16, 25, 16, 43, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1092);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1093, 17, 10, 17, 28, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1093);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1094, 18, 05, 18, 23, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 1094);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (74, strftime('%s', '2014-04-04'), strftime('%s', '2014-09-30'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1095, 18, 35, 18, 53, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 50 AND DestinationLocationId = 51 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 1095);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1096, 19, 00, 19, 18, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 51 AND DestinationLocationId = 50 AND ServiceId = 12), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 1096);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (39, "Lochmaddy", 57.596518, -7.157672);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (52, 1, 32, 39, 22);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (53, 1, 39, 32, 22);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (75, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1097, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 1097);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1098, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 1098);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1099, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 1099);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (76, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1100, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 1100);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1101, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 1101);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1102, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 1102);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (77, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1103, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1103);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1104, 19, 00, 20, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1104);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1105, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1105);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1106, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 1106);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (78, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1107, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (78, 1107);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1108, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (78, 1108);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1109, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (78, 1109);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (79, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1110, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (79, 1110);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1111, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (79, 1111);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1112, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (79, 1112);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (80, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-21'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1113, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (80, 1113);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1114, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (80, 1114);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1115, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (80, 1115);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (81, strftime('%s', '2014-08-30'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1116, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (81, 1116);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1117, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (81, 1117);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1118, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (81, 1118);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (82, strftime('%s', '2014-06-28'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1119, 14, 15, 16, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (82, 1119);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1120, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (82, 1120);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1121, 16, 25, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (82, 1121);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (83, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1122, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (83, 1122);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (84, strftime('%s', '2014-06-27'), strftime('%s', '2014-08-29'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1123, 22, 00, 23, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (84, 1123);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1124, 20, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (84, 1124);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (85, strftime('%s', '2014-06-27'), strftime('%s', '2014-08-29'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1125, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (85, 1125);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1126, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (85, 1126);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1127, 20, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (85, 1127);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (86, strftime('%s', '2014-04-06'), strftime('%s', '2014-05-04'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1128, 11, 15, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (86, 1128);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (87, strftime('%s', '2014-09-14'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (1129, 11, 15, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (87, 1129);




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


