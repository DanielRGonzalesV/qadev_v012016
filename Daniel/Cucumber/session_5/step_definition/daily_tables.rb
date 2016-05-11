Given(/^Daniel tiene un calendario de actividades diarias:$/) do |table|
  @board = table.raw 
end

When(/^Daniel "(ingresa|elimina)" "([^"]*)" como actividad planificada para el "(Martes|Miercoles)" a las "(\d+)"$/) do |arg1, arg2, arg3, arg4|
    arg1=arg1.to_s
    arg2=arg2.to_s
    arg3=arg3.to_s
    arg4=arg4.to_i


case
    when arg3=="Lunes" then col = 1
    when arg3=="Martes" then col = 2
    when arg3=="Miercoles" then col = 3
    when arg3=="Jueves" then col = 4
    when arg3=="Viernes" then col = 5
end

case
    when arg4==8 then row = 1
    when arg4==9 then row = 2
  	when arg4==10 then row = 3
  	when arg4==11 then row = 4
    when arg4==12 then row = 5
    when arg4==13 then row = 6
end


    row, col = row.to_i, col.to_i

    (arg1=="ingresa") ? (@board[row][col] = arg2) : (@board[row][col] = "")
	
	
end

Then(/^El calendario de actividades diarias es actualizado$/) do |expected_table|
  expected_table.diff!(@board)
end