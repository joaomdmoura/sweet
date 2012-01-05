Feature: Creating tags
	Starting tests the creation of all tags and inline-tags
	
	Scenario: Compile each inline-tag listed together
		Given I have entered area tag in compiler
		And I have entered img tag in compiler
		And I have entered param tag in compiler
		And I have entered input tag in compiler
		And I have entered option tag in compiler
		And I have entered base tag in compiler
		And I have entered link tag in compiler
		And I have entered meta tag in compiler
		And I have entered hr tag in compiler
		And I have entered br tag in compiler
		When I compile all those tags to test.s file
		Then the result should be all those concatenated and compiled in test.html file

	Scenario: Compile each tag listed together
		Given I have entered a tag in compiler
		And I have entered abbr tag in compiler
		And I have entered acronym tag in compiler
		And I have entered address tag in compiler
		And I have entered applet tag in compiler
		And I have entered b tag in compiler
		And I have entered bdo tag in compiler
		And I have entered big tag in compiler
		And I have entered blockquote tag in compiler
		And I have entered body tag in compiler
		And I have entered button tag in compiler
		And I have entered caption tag in compiler
		And I have entered center tag in compiler
		And I have entered cite tag in compiler
		And I have entered code tag in compiler
		And I have entered colgroup tag in compiler
		And I have entered dd tag in compiler
		And I have entered del tag in compiler
		And I have entered dfn tag in compiler
		And I have entered dir tag in compiler
		And I have entered div tag in compiler
		And I have entered dl tag in compiler
		And I have entered dt tag in compiler
		And I have entered em tag in compiler
		And I have entered fieldset tag in compiler
		And I have entered font tag in compiler
		And I have entered form tag in compiler
		And I have entered frameset tag in compiler
		And I have entered h1 tag in compiler
		And I have entered h2 tag in compiler
		And I have entered h3 tag in compiler
		And I have entered h4 tag in compiler
		And I have entered h5 tag in compiler
		And I have entered h6 tag in compiler
		And I have entered head tag in compiler
		And I have entered html tag in compiler
		And I have entered i tag in compiler
		And I have entered iframe tag in compiler
		And I have entered ins tag in compiler
		And I have entered kbd tag in compiler
		And I have entered label tag in compiler
		And I have entered legend tag in compiler
		And I have entered li tag in compiler
		And I have entered map tag in compiler
		And I have entered menu tag in compiler
		And I have entered noframes tag in compiler
		And I have entered noscript tag in compiler
		And I have entered object tag in compiler
		And I have entered ol tag in compiler
		And I have entered optgroup tag in compiler
		And I have entered p tag in compiler
		And I have entered pre tag in compiler
		And I have entered q tag in compiler
		And I have entered s tag in compiler
		And I have entered samp tag in compiler
		And I have entered script tag in compiler
		And I have entered select tag in compiler
		And I have entered small tag in compiler
		And I have entered span tag in compiler
		And I have entered strike tag in compiler
		And I have entered strong tag in compiler
		And I have entered style tag in compiler
		And I have entered sub tag in compiler
		And I have entered sup tag in compiler
		And I have entered table tag in compiler
		And I have entered tbody tag in compiler
		And I have entered td tag in compiler
		And I have entered textarea tag in compiler
		And I have entered tfoot tag in compiler
		And I have entered th tag in compiler
		And I have entered thead tag in compiler
		And I have entered title tag in compiler
		And I have entered tr tag in compiler
		And I have entered tt tag in compiler
		And I have entered u tag in compiler
		And I have entered ul tag in compiler
		And I have entered var tag in compiler
		When I compile all those tags to test.s file
		Then the result should be all those normal and compiled in test.html file