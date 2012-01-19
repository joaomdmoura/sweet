# encoding: utf-8
Given /^write a sweet code with special characteres$/ do
 $sweet_code = <<-EOS
html
	head
		title
			"Téstê"
	body
		div
			div
				"Ókây!"
EOS

	$compiled_code = <<-EOS
<html>
	<head>
		<title>
			Téstê
		</title>
	</head>
	<body>
		<div>
			<div>
				Ókây!
			</div>
		</div>
	</body>
</html>
EOS
end