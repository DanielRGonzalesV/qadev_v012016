Feature: Buscar datos


@scenariof2s1
Scenario: Datos encontrados

Given Yo tengo que buscar en mi lista de cosas
 	| Cosaslista| ID  |
    | balon     | 1   | 
    | arco      | 2   |
    | zapato    | 3   |
When Yo ingreso "balon"
Then Un mensaje que dice "positivo" aparece

   
@scenariof2s2  
Scenario: Datos no encontrados

Given Yo tengo que buscar en mi lista de cosas
 	| Cosaslista| ID  |
    | balon     | 1   | 
    | arco      | 2   |
    | zapato    | 3   |
When Yo ingreso "jugador"
Then Un mensaje que dice "negativo" aparece   