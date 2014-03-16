if __FILE__ == $PROGRAM_NAME

	start_departure_time = ARGV[0]
	start_arrival_time = ARGV[1]
	interval = ARGV[2].to_i
	count = ARGV[3].to_i

	start_departure_hour = start_departure_time.split(":")[0].to_i
	start_departure_minute = start_departure_time.split(":")[1].to_i

	start_arrival_hour = start_arrival_time.split(":")[0].to_i
	start_arrival_minute = start_arrival_time.split(":")[1].to_i

	departure = Time.utc(2000,"jan",1,start_departure_hour,start_departure_minute,0)
	arrival = Time.utc(2000,"jan",1,start_arrival_hour,start_arrival_minute,0)

	(0..count).each do |i|
		departure = departure + (interval * 60)
		arrival = arrival + (interval * 60)

		departure_hour = departure.hour.to_s.rjust(2, '0')
		departure_min = departure.min.to_s.rjust(2, '0')
		arrival_hour = arrival.hour.to_s.rjust(2, '0')
		arrival_min = arrival.min.to_s.rjust(2, '0')

		puts "#{departure_hour}#{departure_min},#{arrival_hour}#{arrival_min}"
	end	

end