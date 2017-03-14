require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'David', last_name: 'Ng', hourly_rate: 55)
@store1.employees.create(first_name: 'Richard', last_name: 'Hsieh', hourly_rate: 56)
@store2.employees.create(first_name: 'Kirat', last_name: 'Lastname', hourly_rate: 200)
@store2.employees.create(first_name: 'Robert', last_name: 'Canas', hourly_rate: 57)
@store2.employees.create(first_name: 'Hans', last_name: 'Kurniadi', hourly_rate: 58)
