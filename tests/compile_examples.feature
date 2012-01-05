Feature: Compiling Examples
	Compiling each example of the examples folder
	
	Scenario: Compile basic example
		Given select the basic.s from examples/basic folder
		When I compile it
		Then the result should be equal the already compiled basic.html file from examples/basic folder
	
	Scenario: Compile medium example
		Given select the medium.s from examples/medium folder
		When I compile it
		Then the result should be equal the already compiled medium.html file from examples/medium folder

	Scenario: Compile hard example
		Given select the hard.s from examples/hard folder
		When I compile it
		Then the result should be equal the already compiled hard.html file from examples/hard folder