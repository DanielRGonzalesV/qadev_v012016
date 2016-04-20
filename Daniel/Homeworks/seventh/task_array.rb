
puts "Exercise 1", "An array of known objects can be created by enclosing them in square brackets"  
buyList0 = ["apple", "banana", 1, 2.3]
puts buyList0[2]
puts buyList0[3]
puts buyList0[1]
puts buyList0[0]
puts ""

#Exercise 2
puts "You can use negative indexes to start from the end of the array"
buyList1 = ["apple", "banana", 1, 2.3]
puts buyList1[-1]
puts buyList1[-2]
puts buyList1[-3]
puts ""

puts "Exercise 3"
puts "You can even use the handy first and last methods."
puts ["apple", "banana", 1, 2.3].last  # => 2.3
puts ["apple", "banana", 1, 2.3].first # => apple
puts ""

puts "Exercise 4"
puts "To get the count, or size, of an array, use the length method"	
myArray2 = ["a1","a2","a3",1,2,3]
puts myArray2.length
puts ""

puts"Exercise 5" 
puts"%w shortcut"
puts "Since many arrays are composed of single words and all those commas and quote marks are troublesome, Ruby provides a handy shortcut"
myArray1 = %w{"a1" "a2" "a3"}
puts myArray1[0]