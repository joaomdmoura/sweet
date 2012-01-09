Given /^write a random sweet code and include the (.*) example$/ do |file|
 $sweet_code = <<-EOS
html
	head
		title id=id1 #id1_ id=id1_
			"title"
	body #id2 #id2_ id=id2_
		<~ ../examples/basic/basic.s
		div #id3 #id3_ id=id3_
			<~ ../examples/basic/basic.s
			div #id4 #id4_ id=id4_
				<~ ../examples/basic/basic.s
EOS

	$compiled_code = <<-EOS
<html >
<head >
<title id='id1' id='id1_' id='id1_'>
title
</title>
</head>
<body id='id2' id='id2_' id='id2_'>
<html >
<head >
<title >
A Sweet basic demostration
</title>
</head>
<body >
<h1 id='title'>
Welcome to Sweet
</h1>
<h2 class='subtitle'>
Hope you enjoy it
</h2>
</body>
</html>
<div id='id3' id='id3_' id='id3_'>
<html >
<head >
<title >
A Sweet basic demostration
</title>
</head>
<body >
<h1 id='title'>
Welcome to Sweet
</h1>
<h2 class='subtitle'>
Hope you enjoy it
</h2>
</body>
</html>
<div id='id4' id='id4_' id='id4_'>
<html >
<head >
<title >
A Sweet basic demostration
</title>
</head>
<body >
<h1 id='title'>
Welcome to Sweet
</h1>
<h2 class='subtitle'>
Hope you enjoy it
</h2>
</body>
</html>
</div>
</div>
</body>
</html>
EOS
end