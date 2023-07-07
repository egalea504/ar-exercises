require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
puts "This is #{@store1.name}"

@store2 = Store.find(2)
puts "This is #{@store2.name}"

#store name updated to Montreal
@store1.update(name: "Montreal")
puts @store1.name