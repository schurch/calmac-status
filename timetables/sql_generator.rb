# tokens to change processing mode
LOCATION_TOKEN = "-- locations"
ROUTE_TOKEN = "-- route"
CALENDAR_TOKEN = "-- calendar"
TRIP_TOKEN = "-- trips"

# processing modes
:processinglocations
:processingroutes
:processingcalendars
:processingtrips

$current_calendar_id = 0
$current_route_id = 0
$current_trip_id = 0
$current_exclusion_id = 0
$current_route_sql = ""

$current_processing_mode = :processinglocations

$output = ""

def process_location(location_line)
	line_elements = location_line.split(",");
	
	id = line_elements[0]
	name = line_elements[1]
	lat = line_elements[2]
	lng = line_elements[3]

	$output += "INSERT INTO Location (LocationId, Name, Latitude, Longitude) VALUES (#{id}, \"#{name}\", #{lat}, #{lng});\n"
end

def process_calendar(calendar_line)
	line_elements = calendar_line.split(",");
	
	if line_elements.length == 9
		start_date = line_elements[0]
		end_date = line_elements[1]
		mon = line_elements[2]
		tue = line_elements[3]
		wed = line_elements[4]
		thu = line_elements[5]
		fri = line_elements[6]
		sat = line_elements[7]
		sun = line_elements[8]

		$output += "INSERT INTO Calendar (CalendarId, StartDate, EndDate, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday) VALUES (#{$current_calendar_id}, strftime('\%s', '#{start_date}'), strftime('\%s', '#{end_date}'), #{mon}, #{tue}, #{wed}, #{thu}, #{fri}, #{sat}, #{sun});\n"

		$current_calendar_id += 1
	else 
		date = line_elements[0]
		calendar_id = $current_calendar_id - 1

		$output += "INSERT INTO Exclusion (ExclusionId, CalendarId, ExclusionDate) VALUES (#{$current_exclusion_id}, #{calendar_id}, strftime('\%s', '#{date}'));\n"
		$current_exclusion_id += 1
	end

end

def process_route(route_line)
	line_elements = route_line.split(",");
	
	type = line_elements[0]
	source_id = line_elements[1]
	destination_id = line_elements[2]
	service_id = line_elements[3]

	$output += "INSERT INTO Route (RouteId, Type, SourceLocationId, DestinationLocationId, ServiceId) VALUES (#{$current_route_id}, #{type}, #{source_id}, #{destination_id}, #{service_id});\n"

	$current_route_id += 1
end

def process_trip(trip_line)
	line_elements = trip_line.split(",");

	if line_elements.length == 4
		type = line_elements[0]
		source_id = line_elements[1]
		destination_id = line_elements[2]
		service_id = line_elements[3]
		$current_route_sql = "(SELECT RouteId FROM Route WHERE Type = #{type} AND SourceLocationId = #{source_id} AND DestinationLocationId = #{destination_id} AND ServiceId = #{service_id})"
	else 
		departure_hour = line_elements[0][0..1]
		departure_minute = line_elements[0][2..3]
		arrival_hour = line_elements[1][0..1]
		arrival_minute = line_elements[1][2..3]

		notes = !line_elements[2] ? "NULL" : "'#{line_elements[2]}'"

		calendar_id = $current_calendar_id - 1

		$output += "INSERT INTO Trip (TripId, DepartureHour, DepartureMinute, ArrivalHour, ArrivalMinute, RouteId, Notes) VALUES (#{$current_trip_id}, #{departure_hour}, #{departure_minute}, #{arrival_hour}, #{arrival_minute}, #{$current_route_sql}, #{notes});\n"
		$output += "INSERT INTO CalendarTrip (CalendarId, TripId) VALUES (#{calendar_id}, #{$current_trip_id});\n"

		$current_trip_id += 1
	end
	
end

def process_line(line)
	if line == ""
		$output += "\n"
	else
		case
		when $current_processing_mode == :processinglocations
			process_location line
		when $current_processing_mode == :processingroutes
			process_route line
		when $current_processing_mode == :processingcalendars
		  	process_calendar line
		when $current_processing_mode == :processingtrips
			process_trip line
		end
	end
end


if __FILE__ == $PROGRAM_NAME

	$output += "-- Remove everything\n"
	$output += "DELETE FROM Location;\n"
	$output += "DELETE FROM Calendar;\n"
	$output += "DELETE FROM CalendarTrip;\n"
	$output += "DELETE FROM Exclusion;\n"
	$output += "DELETE FROM Trip;\n"
	$output += "DELETE FROM Route;\n\n"

	File.readlines(ARGV[0]).each do |line|
		if line[0] == '#'
			next
		end

		stripped_line = line.strip

		case
		when stripped_line == LOCATION_TOKEN
			$output += "-- Locations\n"
			$current_processing_mode = :processinglocations
		when stripped_line == ROUTE_TOKEN
			$output += "-- Routes\n"
			$current_processing_mode = :processingroutes
		when stripped_line == CALENDAR_TOKEN
			$output += "-- Calendars\n"
		  	$current_processing_mode = :processingcalendars
		when stripped_line == TRIP_TOKEN
			$output += "-- Trips\n"
			$current_processing_mode = :processingtrips
		else
		  process_line stripped_line
		end
	end

	File.open(ARGV[1], "w"){ |output_file| 
		output_file.puts $output
	}
end