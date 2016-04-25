=begin
Create a class that is going to receive :
The amount of persons to register
One method to get the Name and ID for all the persons registered
One method that consider:
	for each one of the Names, change them to upper case
 	print the position and the Name of each person registered 
	Save the name in upper case into an array, return the array
One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.
=end


class Iterators

	
		attr_reader :myHash

		def createHash(amount)
			
				@myHash={}
				

				amount.times do 
					puts "Insert a ID:" 
					key=gets.chomp
					puts "Insert a name:" 
					value=gets.chomp
					myHash[key] = value
				end

		end


		def getNameId
			myHash.each_with_index do |(id,name),index| @i = id, @n = name end

			return @i, @n
		end
			
				
		def position
			myHash.each_with_index do |(id,name),index| puts "The Sr. #{name} with ID #{id} is in the position #{index}" end	
		end

		def nameUpCase
			print myHash.map {|k,n| n.upcase} 
			puts
		end

		def sayBye()
			myHash.each do |id, name| puts "Good bye Sr. #{name}" end	
		end
		

end



person = Iterators.new

puts "Insert the amount of the person to register"
amount=gets.chomp.to_i

person.createHash(amount)
puts
person.getNameId
puts
person.position
puts
person.nameUpCase
puts
person.sayBye

