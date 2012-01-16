Given /^Some basic html template with ids attributes$/ do
 $sweet_code = <<-EOS
html
	head
		title id=id1 #id1_ id=id1_
			"title"
	body #id2 #id2_ id=id2_
		div #id3 #id3_ id=id3_
			div #id4 #id4_ id=id4_
				"content"
EOS

	$compiled_code = <<-EOS
<html>
	<head>
		<title id='id1' id='id1_' id='id1_'>
			title
		</title>
	</head>
	<body id='id2' id='id2_' id='id2_'>
		<div id='id3' id='id3_' id='id3_'>
			<div id='id4' id='id4_' id='id4_'>
				content
			</div>
		</div>
	</body>
</html>
EOS
end

Given /^Some basic html template with classes attributes$/ do
 $sweet_code = <<-EOS
html
	head
		title class=class1 .class1_ class=class1_
			"title"
	body .class2 .class2_ class=class2_
		div .class3 .class3_ class=class3_
			div .class4 .class4_ class=class4_
				"content"
EOS

	$compiled_code = <<-EOS
<html>
	<head>
		<title class='class1' class='class1_' class='class1_'>
			title
		</title>
	</head>
	<body class='class2_' class='class2_'>
		<div class='class3_' class='class3_'>
			<div class='class4_' class='class4_'>
				content
			</div>
		</div>
	</body>
</html>
EOS
end

Given /^Some basic html template with random attributes$/ do
 $sweet_code = <<-EOS
html
	head
		title a=b_ .class c=d_-d
			"title"
	body #id e=f
		div style=background-color:#000;border:1; .class2
			"content"
EOS

	$compiled_code = <<-EOS
<html>
	<head>
		<title a='b_' class='class' c='d_-d'>
			title
		</title>
	</head>
	<body id='id' e='f'>
		<div style='background-color:#000;border:1;'>
			content
		</div>
	</body>
</html>
EOS
end

Then /^the result should be equal the already setup$/ do
	result = ""
	file_ = File.new("tests/test.html", "r")
	while (line = file_.gets)
		result += line
	end
	File.delete("tests/test.html")
	result.should == $compiled_code
end