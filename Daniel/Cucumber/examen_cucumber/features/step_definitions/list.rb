require 'singleton.rb'

Given(/^Yo tengo que buscar en mi lista de cosas$/) do |table|
  @board = table.to_s

end

When(/^Yo ingreso "([^"]*)"$/) do |arg1|
  
  @arg1 = arg1
	@axu = 0	
		Report.instance.hashValuePurchase.each do |key,value| 

		if (value==@arg1) then 
				@aux = 1

		end 


end


if (@aux==1) then puts "the valor ingresado: #{@arg1} esta presente en mi lista de cosas" end 
if (@aux==0) then puts "the valor ingresado: #{@arg1} No esta presente en mi lista de cosas" end 
@aux = 0
end 


Then(/^Un mensaje que dice "(positivo|negativo)" aparece$/) do |arg1|
  
end

