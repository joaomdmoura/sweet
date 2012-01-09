Feature: Importing files tests
	Compiling files with includes of others
	
	Scenario: Compile the basic example including the medium
		Given write a random sweet code and include the basic.s example
		When I compile it
		Then the result should be equal the already setup