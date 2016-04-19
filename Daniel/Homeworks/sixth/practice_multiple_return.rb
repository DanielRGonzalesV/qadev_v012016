=begin
	
Considered your previous script of convert seconds in minutes and seconds in hours :
Ask from prompt the value of the seconds
Perform the calculation of minutes and hours into one function, return both values
Print the values of the variables.

	
=end





def method_multiple_return(seconds)
   
   	secondToDay=seconds/24*60*60
	secondToHour=seconds/60*60
	secondToMinute=seconds/60
  
   return secondToDay , secondToHour , secondToMinute
end


puts "Enter the quantity Seconds that want you convert"
second = gets.chomp.to_i

value_secondToDay, value_secondToHour, value_secondToMinute = method_multiple_return(second)

puts "Seconds converted in Days is: #{value_secondToDay}"
puts "Seconds converted in Hours are: #{value_secondToHour}"
puts "Seconds converted in Minutes are: #{value_secondToMinute}"