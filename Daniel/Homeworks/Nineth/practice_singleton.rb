class User

	attr_accessor :user, :message, :visitors
	attr_reader :myHash

	def initialize

	 @user = "Guest"
	 @message = "Welcome to the city"
	 @visitors = 0
	end

	def addData
		
		puts "Ingrese el nombre de Usuario"
		@user = gets.chomp.to_s
		puts "Ingrese el mensaje de Usuario"
		@message = gets.chomp.to_s

			myHash = {}
		myHash[@user] = @message
		
		@visitors=@visitors + 1

	     continue
		
	end

	def continue
		
		puts "Como quieres continuar?"
		puts "[Y] añadir mas usuarios   ----  [Any Key] salir"
		opc = gets.chomp.to_s

		(opc =~/(Y|y)/) ? (addData) : (puts "Adios")
end

end

myUser = User.new

puts "Vamos a cargar el Hash"
myUser.addData
puts "El ultimo usuario ingresado es: #{myUser.user}"