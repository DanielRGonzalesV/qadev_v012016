#------------------------------------------
#Write a feature file describing 2 scenarios of your daily activities using a background.
#
#--------------------------------------------


Feature: Dayli Activities

Background: Begin the day
   Given I wake up
   When The alarm clock rings
   Then I get up

Scenario: Preparar Desayuno
	Given Yo me despierto en las mañanas con mucha hambre
	When Yo voy a la cocina
		And Yo pongo a calentar la leche
		And una vez caliente, le agrego azucar
		And Yo saco 2 panes de la canasta de pan
	Then Yo tengo un buen desayuno preparado

Scenario: Tomar una ducha
	Given Yo necesito asearme para salir de casa
	When Yo voy al cuarto de baño
		And Yo me quito la ropa
		And Abro la llave de la ducha
		And Yo regulo temperatura
		And Yo entro bajo en chorro de agua
		And Yo utilizo articulos de limpieza
	Then Yo obtengo un aseo correcto cada mañana





