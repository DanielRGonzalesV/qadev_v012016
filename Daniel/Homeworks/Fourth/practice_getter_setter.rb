class Item

#attr_accessor :item_name , para definir tanto entrada como salida

	attr_reader :item_name
	attr_writer :item_name

	def initialize(quantity)
		@quantity = quantity
	end

	def item_name
		@item_name		
	end

end

item = Item.new(1)
puts item.item_name = "casa"

#puts Item.new("radio", 5).item_name


