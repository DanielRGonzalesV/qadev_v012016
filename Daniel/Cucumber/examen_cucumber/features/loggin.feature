Feature: Loguearse

Scenario: Ingresar datos

Given Yo abro la aplicacion
And un formulario para loguearse aparece
When I insert "Daniel" into username field
     And I insert "P4ssw0rd" into password field
Then un "Welcome" mensaje aparece

Scenario: salir de la aplicacion

Given Yo quiero salir de la aplicacion
When Yo hago click en el boton salir
Then la pagina de inicio vuelve a mostrarse