html
	head
		title
			"A Sweet Language"
		link href=http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700,600 rel=stylesheet type=text/css
		link rel=stylesheet href=/assets/css/style.css
	body
		div #content
			div #header
				div #logo
					img src=/assets/images/logo.png
			div .block #description
				span .colored_strong
					"Sweet"
				span
					"is a pre-compiled language based on Ruby and Python. Sweet makes possible to use all the class, defs, conditionals, global and local variables power of server-side languages, defining blocks by indentation like Python in your Sweet HTML markup. It comes with a SIC ( Sweet Interactive Console ) the you can test your code and ideas before really right and compile it."
			div .block #example_basic
				div .sweet
					"html
						head
							title"
					br
					span .colored
						"			'A Sweet basic demostration'"
					br
					span
						"	body
								h1"
					span .strong
						" #title"
					br
					span .colored
						"			'Welcome to Sweet'"
					br
					span
						"		h2"
					span .strong
						".subtitle"
					br
					span .colored
						"			'Hope you enjoy it'"
				div #arrow
				div .html
					span .tags
						"<html>
							<head>
									<title>"
					br
					span
						"					A Sweet basic demostration"
					br
					span .tags
						"			</title>
							</head>
							<body>
								<h1 id='title'>"
					br
					span
						"				Welcome to Sweet"
					br
					span .tags
						"		</h1>
								<h2 class='subtitle'>"
					br
					span
						"				Hope you enjoy it"
					br
					span .tags
						"		</h2>
							</body>"
					br
					span .tags
						"</html>"
			div .block #features
				div .title
					"Features:"
				ul #features_list
					li
						"Clear and simple syntax"
					li
						"Defining blocks using indentation"
					li
						"Support to Class, Def, Conditionals, Constants and Variables"
						ul
							li
								"Just If conditional for now ( whitout else )"
							li
								"Local and Global Variables ( down / uppercase eg. lol / Lol )"
							li
								"Constants ( TRUE, FALSE, NIL )"
					li
						"SIC ( Sweet Interactive Console )"
					li
						"Automaticly return of the last value of Def"
					li
						"Multiple scopes"
					li
						"A small and cool extension '.s'"
			div .block #hard_usage
				div .title
					"Hard Usage:"
				div .sweet
					span
						"class Sweet
	def get_user(admin)
		if admin"
					br
					span .colored
						"		'Jonh Doe'"
					br
					span
						"def get_status(usr)
		if usr"
					br
					span .colored
						"		'Logged'"
					br
					span
						"Sweet = Sweet.new

Var1 = "
					span .colored
						"'A Sweet hard demostration'"
					br
					span
						"Var2 =" 
					span .colored
						"'Welcome to Sweet'"
					br
					span
						"Var3 =" 
					span .colored
						"'Hope you keep enjoing it'"
					br
					br
					span
						"html
	head
			title
				print( Var1 )
	body
			h1"
					span .strong
						"#title"
					br
					span
						"				print( Var2 )
			h2"
					span .strong
						".subtitle"
					br
					span
						"				print( Var3 )
			div"
					span .strong
						"#user"
					br
					span
						"			ul"
					span .strong
						"#container"
					br
					span
						"				li"
					span .strong
						".name"
					br
					span
						"						code_def = Sweet.get_user(true)
						print (code_def)
					li"
					span .strong
						".status"
					br
					span
						"						code_def = Sweet.get_status(code_def)
						print (code_def)
			div "
					span .strong
						"#logout"
					br
					span
						"			a href=logout"
					br
					span .colored
						"				'Do you wanna logout'"
					br
					span
						"		div"
					span .strong
						"#login"
					br
					span
						"			form action=login"
					span .strong
						" #form"
					br
					span
						"			input type=text "
					span .strong
						"#email"
			div .block #comparison
				div .title
					"Comparison:"
				div .subtitle
					"CoffeeKup"
					div .coffeekup
						"html ->
							head ->
								title 'A Sweet basic demostration'
							body ->
								h1 id:title, ->
									'Welcome to Sweet'
								h2 class:subtitle, ->
									'Hope you enjoy it'"
				div .subtitle
					"Jade"
					div .jade
						"html
		head
			title A Sweet basic demostration
		body
			h1(id='title')
				Welcome to Sweet
			h2(class='subtitle')
				Hope you enjoy it"
				div .subtitle
					"Sweet"
					div .sweet
						"html
							head
								title
									'A Sweet basic demostration'
							body
								h1 #title
									'Welcome to Sweet'
								h2 .subtitle
									'Hope you enjoy it'"