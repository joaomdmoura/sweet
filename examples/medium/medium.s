Var1 = "A Sweet medium demostration"
Var2 = "Welcome to Sweet"
Var3 = "Hope you keep enjoing it"

def sweet_content( easy )
	if easy
		"It isn't getting hard, is getting sweet!"

html
	head
		title
			print( Var1 )
	body
		h1 #title
			print( Var2 )
		h2 .subtitle
			print( Var3 )
		div
			content = sweet_content( true )
			print( content )