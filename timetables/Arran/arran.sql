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
