Feature: Compiling file with if and else conditionals
	
	Scenario: Compile the a sweet file with a lot of conditonals
		Given write a sweet code with conditionals
		When I compile it
		Then the result should be equal the already setup