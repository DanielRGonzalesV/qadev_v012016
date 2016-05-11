#-------------------------------------
#In the second scenario add any information in a data table.(e.g list of task, etc)
#
#Using the same logic of the last example(game) perform a comparison between what result you are expecting after add or delete any option of the table.
#-------------------------------------

Feature: Calendario de actividades

Scenario: Completar mis calendario de actividades diarias

Given Daniel tiene un calendario de actividades diarias:

|      | Lunes | Martes | Miercoles | Jueves | Viernes |
| 8    |       |   		|		    |		 | 		   |
| 9    |       |  		|        	|		 |		   |
| 10   |       |  		|   		|		 |		   |
| 11   |       |      	|   		|		 | 		   |
| 12   |       |   		|   		|        | 		   |
| 13   |       |   		|   		|		 |		   |

When Daniel "ingresa" "Dormir" como actividad planificada para el "Martes" a las "11"
Then El calendario de actividades diarias es actualizado

|      | Lunes | Martes | Miercoles | Jueves | Viernes |
| 8    |       |   		|		    |		 | 		   |
| 9    |       |  		|        	|		 |		   |
| 10   |       |  		|   		|		 |		   |
| 11   |       | Dormir	|   		|		 | 		   |
| 12   |       |   		|   		|        | 		   |
| 13   |       |   		|   		|		 |		   |

When Daniel "elimina" "Dormir" como actividad planificada para el "Martes" a las "11"
Then El calendario de actividades diarias es actualizado

|      | Lunes | Martes | Miercoles | Jueves | Viernes |
| 8    |       |   		|		    |		 | 		   |
| 9    |       |  		|        	|		 |		   |
| 10   |       |  		|   		|		 |		   |
| 11   |       |     	|   		|		 | 		   |
| 12   |       |   		|   		|        | 		   |
| 13   |       |   		|   		|		 |		   |
