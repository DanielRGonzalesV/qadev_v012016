=begin
	
module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year

-------------------------

module A
   def a1
   end
   def a2
   end
end
module B
   def b1
   end
   def b2
   end
end




class Sample
include A
include B
   def s1
   end
end



samp=Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1

=end





#require <filename> 
#require_relative “folder/ruby_file" 

require_relative "module_greet" 

class Greet 
include Greets
include Say_bye
end

aux=Greet.new
aux.g1
aux.g2
aux.g3
aux.s1
aux.s2
aux.s3



