Feature: Creating tags
	Starting tests the creation of all tags and inline-tags
	
	Scenario: Compile each inline-tag listed
		Given I have entered area inline-tag in compiler
		And I have entered img inline-tag in compiler
		And I have entered param inline-tag in compiler
		And I have entered input inline-tag in compiler
		And I have entered option inline-tag in compiler
		And I have entered base inline-tag in compiler
		And I have entered link inline-tag in compiler
		And I have entered meta inline-tag in compiler
		And I have entered hr inline-tag in compiler
		And I have entered br inline-tag in compiler
		When I compile all those tags to test.s file
		Then the result should be all those compiled in test.html file
