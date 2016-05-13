#--------------------------------------------------------------
# Suppose you create a feature file for a customer search
#
# 1. Add an scenario outline to simulate a search of a total priced for a list clients
#
#You should send the name of the client
#The ID of the client
#The Total priced of purchase
#
#On behind you should create a singleton class with a hash containing the list of clients and the ID
#and another hash with the ID of the client and the Total_priced, to perform the comparison between this values and #the expected sent # in the feature file.
#--------------------------------------------------------------------

Feature: Session Scenario Outline

Scenario Outline: Search of a total priced for a list clients
Given I have <ClientName> in the list of clients
When The client has an <ID>
Then the client has <purchase> 

  Examples:
    | ClientName  | ID  | purchase  | 
    | Gaspar      | 1   | $500      | 
    | Baltazar    | 2   | $600      | 
    | Manuel      | 3   | $700      | 
	
