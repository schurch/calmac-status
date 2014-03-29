$output = ""

if __FILE__ == $PROGRAM_NAME
	Dir.glob("*/*_data.txt") do |data_file|
		puts "Adding: #{data_file}..."

		$output += File.open(data_file, "rb").read
		$output += "\n\n"
	end

	File.open(ARGV[0], "w"){ |output_file| 
		output_file.puts $output
	}
end