class Travel

	
	def buyTicket(tName="NN",tPrice=0.0,tDestiny="Cochabamba")
	  
		convert = tPrice*6.95
	 	puts "Hi #{tName}, the ticket price is #{convert} $us to travel #{tDestiny}"
	end
end


puts "Ingrese su nombre"
name = gets.chomp.to_s

puts "Ingrese Precio en Bolivianos"
price = gets.chomp.to_f

puts "Ingrese Destino"
destiny = gets.chomp.to_s

(destiny == "") ? ( Travel.new.buyTicket name,price) : (Travel.new.buyTicket name,price,destiny)



