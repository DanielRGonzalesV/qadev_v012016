class Session8

	attr_accessor :name
	attr_accessor :age

	def validate(age)
		age<35? (parameter(age, (age*365*24))) : (puts "the age cannot be calculated")
	end
	
	def parameter(age, hours)
		case age
		when 0..5 then puts "You are the baby + #{hours}"  
		when 6..12 then puts "You are a child + #{hours}" 
		when 13..21 then puts "You are a young people + #{hours}" 
		when 22..35 then puts "You are adult + #{hours}"   
		end
	end

end

mysession = Session8.new
mysession.name="daniel"
mysession.age=34


mysession.validate(mysession.age)
