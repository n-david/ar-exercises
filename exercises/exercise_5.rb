require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.pluck(:annual_revenue).sum
num_stores = Store.count
puts 'Total revenue for company: ', @total_revenue
puts 'Total average annual revenue: ', @total_revenue/num_stores

puts 'Stores with over 1M in annual revenue: ', Store.where('annual_revenue > 1000000').count
