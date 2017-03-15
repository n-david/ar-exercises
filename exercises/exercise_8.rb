require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
kanye = @store2.employees.create(first_name: 'Kanye', last_name: 'West', hourly_rate: 200)
puts "#{kanye.first_name}'s password: #{kanye.password}"
