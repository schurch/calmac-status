SELECT l.Name, l.Latitude, l.Longitude
FROM Location l
WHERE l.locationId IN (
	SELECT r.sourceLocationId
	FROM Route r
	WHERE r.serviceId = 5

	UNION

	SELECT r.destinationLocationId
	FROM Route r 
	WHERE r.serviceId = 5
)