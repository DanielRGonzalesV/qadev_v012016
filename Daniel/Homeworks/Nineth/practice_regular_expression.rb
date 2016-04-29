=begin
Add a method that is going to ask for a username :
Need to be write with lowercase letter (a-z), number (0-9), an underscore
Add a method that is going to ask for a password:
Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters
Add a method that is going to ask for email
Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)

=end

class NewUser

	def username
		puts "Enter a Username valid that it contain: lowercase letter (a-z), number (0-9), an underscore"
		usr = gets.chomp

		puts (usr =~ /[a-z0-9_]/)? (puts "user valid") : (username)
			

	end

	def password
		puts "Enter a Password valid that it contain: lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters"
		pss = gets.chomp

		puts (pss =~ /[a-z0-9A-Z]{8,16}/)? (puts "password valid") : (password)
		
	end

	def email
		puts "Enter a Email valid"
		eml = gets.chomp

		puts (eml =~ /[a-z]@domain.(com|com.[a-z]{2})/)? (puts "email valid") : (email)
       
	end
end

user = NewUser.new
user.username
user.password
user.email