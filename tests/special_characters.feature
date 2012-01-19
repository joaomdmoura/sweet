Feature: Compiling file with special characters
	Compiling files with includes of others
	
	Scenario: Compile the a sweet fiel with special characters
		Given write a sweet code with special characteres
		When I compile it
		Then the result should be equal the already setup