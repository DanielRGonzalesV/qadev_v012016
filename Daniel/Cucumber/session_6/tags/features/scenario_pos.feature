#1.       Create 1 Feature File considering  a test for a calculator :
#a.       Add 1 scenario using tag @positive_test, this scenario should have a hook to print a message “This is the Positive case for scenario.name
#b.      add 1 scenario using tag @negative_ test, this scenario should have a hook to print a message “This is the Negative case for scenario.name
#c.       Add 1 scenario using tag @boundary_test, this scenario should have a hook to print a message “This is the Negative case for scenario.name
 
#2.       Create another feature file to test
#a.       Add 1 scenario using tag @positive_test,
#b.      add 1 scenario using tag @negative_ test
#c.       Add 1 scenario using tag @boundary_test
 
#Create verification steps using the correct sintax in the reg expression, organize the step definition according each feature.
 
#You should :
#Push the code for your feature file,hooks, steps_definitions.
#Push reports for execution according :
#1 report for both features (all scenarios)
#1 report for only positive test
#1 report for only negative test
#1 report for only boundary test
#1 report for Boundary and positive.
 

Feature: calculator

@positive_test
Scenario: Escenario Positivo

Give Yo estoy feliz
When me pasa algo bueno
Then necesito momentos felices

@negative_test
Scenario: Escenario Negativo

Give Yo estoy triste
When me pasa algo malo
Then siempre ocurren momentos malos

@boundary_test
Scenario: Escenario Boundary

Give Yo estoy pensativo
When algo no pasa
Then yo espero muchas cosas