#!/bin/bash
# Generates time table data and runs the output against the database

# generate input sql
ruby timetable_data_generator.rb timetable_data.txt
ruby sql_generator.rb timetable_data.txt timetable.sql

# add to database
sqlite3 "/Users/stefanchurch/Documents/XCode Projects/CalMac/timetables.sqlite" < timetable.sql
