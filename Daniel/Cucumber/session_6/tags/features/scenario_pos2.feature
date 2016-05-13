Feature: calculator

@positive_test
Scenario: Escenario Positivo

Give Yo necesito usar la calculadora
When Yo quiero realizar la "suma" "1" "+" "1"
Then Yo obtengo un resultado correcto

@negative_test
Scenario: Escenario Negativo

Give Yo necesito usar la calculadora
When Yo quiero realizar la "resta" "2" "-" "5"
Then Yo obtengo un resultado correcto

@boundary_test
Scenario: Escenario Boundary

Give Yo necesito usar la calculadora
When Yo quiero realizar la "operacion" "1" "!" "1"
Then Yo obtengo un resultado correcto