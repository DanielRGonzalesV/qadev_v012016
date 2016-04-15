class Father

@@money = 12056

	def self.money
		@@money
	end
end

puts "El dinero que tiene el Padre es: " + Father.money.to_s


class Son1 < Father
	moneySon1 = @@money - 2020
	puts "El dinero que tomo el hijo 1 es: 2020"
	@@money = moneySon1

end


class Son2 < Father
	moneySon2 = @@money - 3265
	puts "El dinero que tomo el hijo 2 es: 3265"
	@@money = moneySon2
end


class Son3 < Father
	moneySon3 = @@money - 5004
	puts "El dinero que tomo el hijo 2 es: 3265"
	@@money = moneySon3
end

puts "el dinero que le queda al Padre es: " + Father.money.to_s