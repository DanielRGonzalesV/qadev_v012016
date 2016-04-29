=begin
	Create 1 Class considering :

Method that will create a hash with a list of userID and userName,the userID should be only numbers between 1 to 100. Username should be only lowercase (nor more than 8 digits)

Method that is going to request to the user for a number (only 1 number) and need to return the amount of users that have their user ID starting with the number inserted (E.g. if user inserted 1, then could count all users with 1, 10,11,12,13..19 or 100), return and array with the user_ID that fulfilled this condition

Method that is going to request to the user for a character (only 1 char) and need to return the amount of users that have their  userName starting with the character inserted (E.g. if user inserted a, then could count all users that start with a), return and array with the list of userName that fulfilled this condition

Method to display a message considering :
UseID between 1-25 “User belong Group 1”
UseID between 26-50 “User belong Group 2”
UseID between 51-75 “User belong Group 3”
UseID between 76-100 “User belong Group 4”
Consider to use Case Equality 

Method to print the array received

=end

class Eregular

	attr_accessor :myhash
	
		def createHash
			
			@myhash = {}
				puts "Insert the length of the hash"
				length=gets.chomp.to_i

				i=0
				begin

					puts "Insert a Key:" 
					key=gets.chomp.to_i.to_s
					puts "Insert a Value:" 
					value=gets.chomp.to_s
					
					(key =~ /[0-9]{1,3}/)&&(value =~ /[a-z]{1,8}/) ? (myhash[key]=value) : (i=i-1)
					
					i=i+1
					
				end while i<length
				puts
		end

		def requestId
			puts "Insert only a Number to find:" 
			num=gets.chomp.to_i.to_s
			(num =~ /[0-9]{1}/) ? (showRequestId(num)) : (requestId)
		end

		def showRequestId(num)
			num1 = num

			myh = myhash.select{|id,name| (id =~ /^#{num1}/)}
			print myh.map {|k,n| k}  
			puts

		end

		def requestChar

			puts "Insert only a character to find:" 
			str=gets.chomp.to_s
			(str =~ /[a-z]{1}/) ? (showRequestChar(str)) : (requestChar)
			
		end

		def showRequestChar(str)
			str1 = str

			myh = myhash.select{|id,name| (name =~ /^#{str1}/)}
			print myh.map {|k,n| n}
			puts
		end


		def userGroup
			puts "Insert yourID to find your group:" 
			id=gets.chomp.to_i

			case id
			
				when 1..25; print "UseID between 1-25 “User belong Group 1"
				when 26..50; print "UseID between 26-50 “User belong Group 2"
				when 51..75; print "UseID between 51-75 “User belong Group 3"
				when 76..100; print "UseID between 76-100 “User belong Group 4"
				else puts "unexpected value"
			end
			
		end

end

vamos = Eregular.new

vamos.createHash
vamos.requestId
vamos.requestChar
vamos.userGroup