class Sweet
	def get_user(admin)
		if admin
			"Jonh Doe"
	
	def get_status(usr)
		if usr
			"Logged"
	
Sweet = Sweet.new

Var1 = "A Sweet hard demostration"
Var2 = "Welcome to Sweet"
Var3 = "Hope you keep enjoing it"

html
	head
		title
			print( Var1 )
	body
		h1 #title
			print( Var2 )
		h2 .subtitle
			print( Var3 )
		div #user
			ul #content
				li .name
					Code_def = Sweet.get_user(true)
					print (Code_def)
				li .status
					code_def = Sweet.get_status(Code_def)
					print (code_def)
		div #logout
			a href=logout
				"Do you wanna logout"
		div #login
			form action=login #form
				input type=text #email