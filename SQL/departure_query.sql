SELECT r.type as RouteType, t.DepartureHour as DepartureHour, t.DepartureMinute as DepartureMinute, t.ArrivalHour as ArrivalHour, t.ArrivalMinute as ArrivalMinute
FROM CalendarTrip ct,
	(SELECT c.CalendarId
		FROM Calendar c 
		WHERE c.StartDate <= date('2013-12-23') 
			AND c.EndDate >= date('2013-12-23') 
			AND c.Thursday = 1
			AND c.CalendarId NOT IN (SELECT e.CalendarId 
									  FROM Exclusion e 
									  WHERE e.ExclusionDate = date('2013-12-23'))
	) as c
INNER JOIN Trip t ON t.TripId = ct.TripId
INNER JOIN Route r on r.RouteId = t.RouteId
WHERE ct.CalendarId = c.CalendarId
	AND r.serviceId = 5