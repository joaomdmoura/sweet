Feature: Using Attributes
	Compiling some sweet code using parameters and shourtcuts
	
	Scenario: Compile a id shortcut sequence
		Given Some basic html template with ids attributes
		When I compile it
		Then the result should be equal the already setup
	
	Scenario: Compile a class shortcut sequence
		Given Some basic html template with classes attributes
		When I compile it
		Then the result should be equal the already setup

	Scenario: Compile a random attributes sequence
		Given Some basic html template with random attributes
		When I compile it
		Then the result should be equal the already setup