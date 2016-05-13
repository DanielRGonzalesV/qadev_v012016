require 'singleton.rb'


Given(/^I have (\w+) in the list of clients$/) do |clientList|
	@clientList=clientList.to_s
	#llamo al singleton.metodo,  lo recorro y obtengo sus valores 
	Report.instance.hashNameID.each do |key,value| 
		if (value==@clientList) then 
					puts "the Id of the client #{@clientList} is #{key}"
		end 
		#solo imprimo el que sea igual al Id de mi hash con mi variable
		puts	
		puts "The comparison between the value #{value} and the expected #{@clientList} is:" 
		puts Report.instance.hashNameID.has_value?(@clientList)
		
	end
 
  
end

When(/^The client has an (\d+)$/) do |id|  
	@id=id
	#Instancio a mi metodo hashIDPurchase
	Report.instance.hashIDPurchase
		#Instancio a mi metodo hashIDPurchase
		Report.instance.hashIDPurchase.each do |key,value|
		if (key==@id) then 
					p "the amount of money purchased to the client #{@clientList} is #{value}"
		end 	
		#puts Report.instance.hashNameID.has_key?(@id)
	end

end

Then(/^the client has \$(\d+)$/) do |purchase|
	@purchase=purchase
	Report.instance.hashIDPurchase
		Report.instance.hashIDPurchase.each do |key,value|
		if (value==@purchase) then 
					puts "the client that has to pay #{@purchase} has the id  #{key}"
		end 	
		#puts Report.instance.hashNameID.has_key?(@id)
	end
	
end