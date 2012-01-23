Feature: Compiling file with while usage

	Scenario: Compile the a sweet file with while usage
		Given write a sweet code with while loop usage
		When I compile it
		Then the result should be equal the already setup