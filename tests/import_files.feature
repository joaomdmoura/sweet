Feature: Importing files tests
	Compiling files with includes of others
	
	Scenario: Compile the a sweet code with all examples included
		Given write a random sweet code and include the examples
		When I compile it
		Then the result should be equal the already setup