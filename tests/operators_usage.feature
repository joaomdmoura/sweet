Feature: Testing operators
	Scenario: Compiling files with operators inside of it
		Given write a sweet code with a lot of operators
		When I compile it
		Then the result should be equal the already setup