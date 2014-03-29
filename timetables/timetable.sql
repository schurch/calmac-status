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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (24, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (329, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 329);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (330, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 330);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (331, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 331);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (332, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 332);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (333, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 333);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (334, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 334);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (335, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 335);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (336, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 336);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (337, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 337);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (338, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 338);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (339, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 339);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (340, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 340);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (341, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 341);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (342, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 342);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (343, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 343);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (344, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 344);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (345, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 345);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (346, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 346);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (347, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 347);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (348, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 348);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (349, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 349);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (350, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 350);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (351, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 351);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (352, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 352);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (353, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 353);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (354, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 354);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (355, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 355);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (356, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 356);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (357, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 357);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (358, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 358);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (359, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 359);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (360, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 360);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (361, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 361);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (362, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 362);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (363, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 363);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (364, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 364);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (365, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 365);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (366, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 366);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (367, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 367);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (368, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 368);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (369, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 369);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (370, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 370);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (371, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 371);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (372, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 372);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (373, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 373);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (374, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 374);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (375, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 375);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (376, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 376);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (377, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 377);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (378, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (24, 378);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (25, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (379, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 379);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (380, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 380);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (381, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 381);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (382, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 382);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (383, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 383);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (384, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 384);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (385, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 385);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (386, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 386);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (387, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 387);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (388, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 388);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (389, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 389);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (390, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 390);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (391, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 391);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (392, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 392);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (393, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 393);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (394, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 394);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (395, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 395);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (396, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 396);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (397, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 397);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (398, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 398);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (399, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 399);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (400, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 400);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (401, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 401);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (402, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 402);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (403, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 403);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (404, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 404);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (405, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 405);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (406, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 406);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (407, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 407);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (408, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 408);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (409, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 409);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (410, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 410);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (411, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 411);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (412, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 412);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (413, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 413);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (414, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 414);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (415, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 415);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (416, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 416);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (417, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 417);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (418, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 418);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (419, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 419);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (420, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 420);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (421, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 421);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (422, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 422);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (423, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 423);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (424, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 424);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (425, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 425);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (426, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 426);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (427, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 427);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (428, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (25, 428);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (26, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-24'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (429, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 429);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (430, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 430);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (431, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 431);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (432, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (26, 432);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (27, strftime('%s', '2014-08-18'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (433, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 433);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (434, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 434);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (435, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 435);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (436, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (27, 436);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (28, strftime('%s', '2014-04-04'), strftime('%s', '2014-05-18'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (437, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 437);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (438, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 438);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (439, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 439);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (440, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 440);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (441, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 441);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (442, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 442);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (443, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 443);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (444, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 444);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (445, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 445);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (446, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 446);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (447, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 447);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (448, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 448);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (449, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 449);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (450, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 450);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (451, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 451);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (452, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 452);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (453, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 453);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (454, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 454);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (455, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 455);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (456, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 456);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (457, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 457);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (458, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 458);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (459, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 459);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (460, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 460);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (461, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 461);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (462, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 462);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (463, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 463);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (464, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 464);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (465, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 465);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (466, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 466);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (467, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 467);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (468, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 468);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (469, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 469);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (470, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 470);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (471, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 471);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (472, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 472);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (473, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 473);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (474, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 474);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (475, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 475);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (476, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (28, 476);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (29, strftime('%s', '2014-08-24'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (477, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 477);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (478, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 478);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (479, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 479);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (480, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 480);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (481, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 481);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (482, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 482);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (483, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 483);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (484, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 484);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (485, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 485);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (486, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 486);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (487, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 487);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (488, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 488);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (489, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 489);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (490, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 490);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (491, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 491);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (492, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 492);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (493, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 493);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (494, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 494);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (495, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 495);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (496, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 496);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (497, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 497);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (498, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 498);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (499, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 499);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (500, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 500);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (501, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 501);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (502, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 502);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (503, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 503);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (504, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 504);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (505, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 505);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (506, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 506);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (507, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 507);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (508, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 508);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (509, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 509);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (510, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 510);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (511, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 511);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (512, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 512);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (513, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 513);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (514, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 514);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (515, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 515);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (516, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (29, 516);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (30, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 1, 1, 1, 1, 1, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (517, 06, 45, 06, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 517);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (518, 07, 15, 07, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 518);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (519, 07, 45, 07, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 519);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (520, 08, 15, 08, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 520);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (521, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 521);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (522, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 522);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (523, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 523);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (524, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 524);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (525, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 525);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (526, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 526);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (527, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 527);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (528, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 528);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (529, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 529);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (530, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 530);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (531, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 531);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (532, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 532);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (533, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 533);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (534, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 534);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (535, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 535);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (536, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 536);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (537, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 537);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (538, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 538);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (539, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 539);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (540, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 540);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (541, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 541);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (542, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 542);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (543, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 543);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (544, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 544);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (545, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 545);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (546, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 546);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (547, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 547);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (548, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 548);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (549, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 549);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (550, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 550);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (551, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 551);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (552, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 552);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (553, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 553);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (554, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 554);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (555, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 555);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (556, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 556);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (557, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 557);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (558, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 558);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (559, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 559);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (560, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 560);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (561, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 561);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (562, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 562);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (563, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 563);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (564, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 564);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (565, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 565);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (566, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 566);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (567, 07, 00, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 567);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (568, 07, 30, 07, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 568);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (569, 08, 00, 08, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 569);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (570, 08, 30, 08, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 570);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (571, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 571);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (572, 09, 45, 09, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 572);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (573, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 573);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (574, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 574);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (575, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 575);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (576, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 576);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (577, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 577);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (578, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 578);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (579, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 579);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (580, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 580);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (581, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 581);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (582, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 582);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (583, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 583);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (584, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 584);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (585, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 585);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (586, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 586);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (587, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 587);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (588, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 588);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (589, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 589);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (590, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 590);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (591, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 591);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (592, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 592);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (593, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 593);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (594, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 594);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (595, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 595);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (596, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 596);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (597, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 597);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (598, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 598);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (599, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 599);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (600, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 600);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (601, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 601);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (602, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 602);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (603, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 603);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (604, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 604);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (605, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 605);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (606, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 606);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (607, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 607);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (608, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 608);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (609, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 609);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (610, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 610);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (611, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 611);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (612, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 612);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (613, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 613);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (614, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 614);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (615, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (30, 615);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (31, strftime('%s', '2014-05-26'), strftime('%s', '2014-08-16'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (616, 20, 45, 20, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 616);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (617, 22, 15, 22, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 617);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (618, 21, 00, 21, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 618);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (619, 22, 30, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), 'All vehicles must be booked with Largs office tel: 01475 674134.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (31, 619);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (32, strftime('%s', '2014-05-25'), strftime('%s', '2014-08-17'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (620, 09, 15, 09, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 620);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (621, 10, 00, 10, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 621);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (622, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 622);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (623, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 623);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (624, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 624);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (625, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 625);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (626, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 626);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (627, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 627);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (628, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 628);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (629, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 629);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (630, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 630);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (631, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 631);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (632, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 632);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (633, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 633);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (634, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 634);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (635, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 635);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (636, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 636);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (637, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 637);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (638, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 638);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (639, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 639);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (640, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 640);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (641, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 641);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (642, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 642);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (643, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 643);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (644, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 644);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (645, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 645);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (646, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 646);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (647, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 647);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (648, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 648);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (649, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 649);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (650, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 650);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (651, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 651);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (652, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 652);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (653, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 653);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (654, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 654);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (655, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 655);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (656, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 656);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (657, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 657);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (658, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 658);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (659, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 659);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (660, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 660);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (661, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 661);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (662, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 11 AND DestinationLocationId = 12 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 662);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (663, 09, 30, 09, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 663);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (664, 10, 15, 10, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 664);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (665, 10, 30, 10, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 665);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (666, 10, 45, 10, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 666);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (667, 11, 00, 11, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 667);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (668, 11, 15, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 668);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (669, 11, 30, 11, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 669);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (670, 11, 45, 11, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 670);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (671, 12, 00, 12, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 671);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (672, 12, 15, 12, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 672);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (673, 12, 30, 12, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 673);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (674, 12, 45, 12, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 674);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (675, 13, 00, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 675);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (676, 13, 15, 13, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 676);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (677, 13, 30, 13, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 677);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (678, 13, 45, 13, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 678);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (679, 14, 00, 14, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 679);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (680, 14, 15, 14, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 680);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (681, 14, 30, 14, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 681);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (682, 14, 45, 14, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 682);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (683, 15, 00, 15, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 683);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (684, 15, 15, 15, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 684);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (685, 15, 30, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 685);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (686, 15, 45, 15, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 686);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (687, 16, 00, 16, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 687);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (688, 16, 15, 16, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 688);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (689, 16, 30, 16, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 689);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (690, 16, 45, 16, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 690);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (691, 17, 00, 17, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 691);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (692, 17, 15, 17, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 692);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (693, 17, 30, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 693);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (694, 17, 45, 17, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 694);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (695, 18, 00, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 695);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (696, 18, 15, 18, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 696);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (697, 18, 30, 18, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 697);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (698, 18, 45, 18, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 698);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (699, 19, 00, 19, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 699);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (700, 19, 15, 19, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 700);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (701, 19, 30, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 701);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (702, 19, 45, 19, 55, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 702);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (703, 20, 00, 20, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 703);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (704, 20, 15, 20, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 704);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (705, 20, 30, 20, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 12 AND DestinationLocationId = 11 AND ServiceId = 7), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (32, 705);



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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (33, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (706, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 706);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (707, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 707);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (708, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (33, 708);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (34, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (709, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 709);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (710, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 710);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (711, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (34, 711);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (35, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (712, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 712);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (713, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 713);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (714, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (35, 714);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (36, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (715, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 715);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (716, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 716);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (717, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (36, 717);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (37, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (718, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 718);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (719, 07, 30, 09, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 719);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (720, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (37, 720);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (38, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-21'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (721, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 721);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (722, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 722);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (723, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (38, 723);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (39, strftime('%s', '2014-08-30'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (724, 09, 40, 11, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 724);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (725, 18, 00, 19, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 725);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (726, 11, 50, 13, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (39, 726);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (40, strftime('%s', '2014-06-28'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (727, 09, 45, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 727);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (728, 18, 40, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 728);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (729, 11, 55, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 729);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (730, 21, 00, 22, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (40, 730);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (41, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (731, 14, 00, 15, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 731);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (732, 16, 00, 17, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (41, 732);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (42, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (733, 05, 30, 07, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (42, 733);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (43, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (734, 20, 00, 21, 40, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (43, 734);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (44, strftime('%s', '2014-04-06'), strftime('%s', '2014-05-04'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (735, 18, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 735);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (736, 09, 00, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (44, 736);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (45, strftime('%s', '2014-09-21'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (737, 18, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 33 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (45, 737);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (738, 09, 00, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 33 AND DestinationLocationId = 32 AND ServiceId = 24), 'Operates via Lochmaddy (North Uist).');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (45, 738);



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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (46, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (739, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 739);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (740, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 740);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (741, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 741);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (742, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (46, 742);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (47, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (743, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 743);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (744, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 744);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (745, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 745);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (746, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (47, 746);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (48, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-22'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (747, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (48, 747);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (748, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (48, 748);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (49, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 1, 1, 1, 1, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (749, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 749);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (750, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 750);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (751, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 751);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (752, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (49, 752);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (50, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (753, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 753);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (754, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 754);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (755, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 755);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (756, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (50, 756);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (51, strftime('%s', '2014-09-08'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (757, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (51, 757);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (758, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (51, 758);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (52, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 1, 1, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (759, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 759);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (760, 13, 50, 16, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 760);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (761, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 761);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (762, 17, 35, 20, 20, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (52, 762);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (53, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 1, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (763, 06, 00, 08, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 763);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (764, 13, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 764);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (765, 19, 45, 22, 30, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 765);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (766, 09, 30, 12, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 766);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (767, 16, 30, 19, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 767);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (768, 23, 00, 01, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), 'Arrives following morning.');
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (53, 768);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (54, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (769, 07, 00, 09, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 769);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (770, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 770);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (771, 10, 25, 13, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 771);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (772, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (54, 772);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (55, strftime('%s', '2014-06-23'), strftime('%s', '2014-09-07'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (773, 14, 30, 17, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 9 AND DestinationLocationId = 10 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 773);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (774, 18, 15, 21, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 10 AND DestinationLocationId = 9 AND ServiceId = 25), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (55, 774);



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
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (56, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (775, 07, 00, 07, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 775);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (776, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 776);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (777, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 777);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (778, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 778);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (779, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 779);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (780, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 780);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (781, 08, 00, 08, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 781);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (782, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 782);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (783, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 783);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (784, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 784);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (785, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 785);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (786, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (56, 786);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (57, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 1, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (787, 07, 45, 08, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 787);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (788, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 788);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (789, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 789);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (790, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 790);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (791, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 791);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (792, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 792);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (793, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 793);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (794, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 794);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (795, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 795);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (796, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 796);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (797, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 797);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (798, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (57, 798);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (58, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (799, 07, 45, 08, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 799);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (800, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 800);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (801, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 801);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (802, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 802);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (803, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 803);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (804, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 804);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (805, 22, 30, 23, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 805);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (806, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 806);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (807, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 807);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (808, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 808);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (809, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 809);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (810, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 810);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (811, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (58, 811);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (59, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (812, 07, 30, 08, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 812);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (813, 09, 30, 10, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 813);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (814, 11, 45, 12, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 814);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (815, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 815);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (816, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 816);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (817, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 817);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (818, 06, 45, 07, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 818);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (819, 08, 30, 09, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 819);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (820, 10, 30, 11, 16, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 820);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (821, 12, 45, 13, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 821);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (822, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 822);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (823, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (59, 823);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (60, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (824, 09, 50, 10, 36, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 824);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (825, 11, 55, 12, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 825);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (826, 14, 00, 14, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 826);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (827, 16, 00, 16, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 827);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (828, 08, 45, 09, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 828);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (829, 10, 55, 11, 41, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 829);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (830, 13, 00, 13, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 830);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (831, 15, 00, 15, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 831);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (832, 17, 00, 17, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (60, 832);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (61, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (833, 20, 00, 20, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (61, 833);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (62, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (834, 06, 45, 07, 31, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (62, 834);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (63, strftime('%s', '2014-05-10'), strftime('%s', '2014-09-13'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (835, 20, 00, 20, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 835);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (836, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (63, 836);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (64, strftime('%s', '2014-05-11'), strftime('%s', '2014-09-14'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (837, 18, 00, 18, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 19 AND DestinationLocationId = 38 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 837);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (838, 19, 00, 19, 46, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 38 AND DestinationLocationId = 19 AND ServiceId = 11), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (64, 838);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (50, "Lochaline", 56.536660, -5.775020);
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (51, "Fishnish", 56.514720, -5.810320);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (50, 1, 50, 51, 12);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (51, 1, 51, 50, 12);



-- Locations
INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (39, "Lochmaddy", 57.596518, -7.157672);

-- Routes
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (52, 1, 32, 39, 22);
INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (53, 1, 39, 32, 22);


-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (65, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 1, 0, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (839, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 839);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (840, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 840);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (841, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (65, 841);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (66, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 1, 0, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (842, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 842);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (843, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 843);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (844, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (66, 844);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (67, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 1, 0, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (845, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 845);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (846, 19, 00, 20, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 846);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (847, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 847);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (848, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (67, 848);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (68, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 1, 0, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (849, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 849);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (850, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 850);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (851, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (68, 851);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (69, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (852, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 852);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (853, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 853);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (854, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (69, 854);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (70, strftime('%s', '2014-04-04'), strftime('%s', '2014-06-21'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (855, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 855);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (856, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 856);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (857, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (70, 857);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (71, strftime('%s', '2014-08-30'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (858, 14, 00, 15, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 858);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (859, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 859);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (860, 16, 00, 17, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (71, 860);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (72, strftime('%s', '2014-06-28'), strftime('%s', '2014-08-23'), 0, 0, 0, 0, 0, 1, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (861, 14, 15, 16, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 861);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (862, 07, 30, 09, 15, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 862);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (863, 16, 25, 18, 10, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (72, 863);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (73, strftime('%s', '2014-04-04'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (864, 18, 00, 19, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (73, 864);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (74, strftime('%s', '2014-06-27'), strftime('%s', '2014-08-29'), 0, 0, 0, 0, 1, 0, 0);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (865, 22, 00, 23, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 865);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (866, 20, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (74, 866);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (75, strftime('%s', '2014-06-27'), strftime('%s', '2014-08-29'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (867, 09, 40, 11, 25, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 32 AND DestinationLocationId = 39 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 867);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (868, 11, 50, 13, 35, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 868);
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (869, 20, 00, 21, 45, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (75, 869);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (76, strftime('%s', '2014-04-06'), strftime('%s', '2014-05-04'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (870, 11, 15, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (76, 870);

-- Calendars
INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (77, strftime('%s', '2014-09-14'), strftime('%s', '2014-10-26'), 0, 0, 0, 0, 0, 0, 1);

-- Trips
INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (871, 11, 15, 13, 00, (SELECT RouteId FROM Route WHERE Type = 1 AND SourceLocationId = 39 AND DestinationLocationId = 32 AND ServiceId = 22), NULL);
INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (77, 871);




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


