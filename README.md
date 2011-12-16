![Alt text](http://joaomdmoura.com/sweet/sweet.jpg "A Sweet Language")
# Sweet (current version - 0.1.9)
A **Sweet** Language, that compiles for HTML.

Description
------------
Sweet is a pre-compiled language based on Ruby and Python. 
Sweet makes possible to use all the class, defs, conditionals, global and 
local variables power of server-side languages, defining blocks by indentation 
like Python in your Sweet HTML markup.
It comes with a SIC ( Sweet Interactive Console ) the you can test your code and ideas
before really right and compile it.

Features
------------
* Clear and simple syntax
* Defining blocks using indentation
* Support to Class, Def, Conditionals, Constants and Variables
 * Just If conditional for now ( whitout else )
 * Local and Global Variables ( down / uppercase eg. lol / Lol )
 * Constants ( TRUE, FALSE, NIL )
* SIC ( Sweet Interactive Console )
* Automaticly return of the last value of Def
* Multiple scopes
* A small and cool extension ".s"

Installation
------------

Sweet is available through [Rubygems](http://rubygems.org/gems/sweet-lang) and can be installed via:

```
$ gem install sweet-lang
```

Usage
------------

```
sweet [FILENAME].s
```

or

```
sweet
```
*for SIC ( Sweet Interactive Console )*

##Examples

### A Basic example

Sweet have to be simple, then we start thinking a new way to write a clean and smart syntax that compiles to HTML
So just a few tips:

* Forget '>', '<', '/','attribute="value"'.
 * Attributes are defined without ' " ' ( eg. type=password )
 * You can use shortcuts to "id" and "class" attributes ( eg. #myid / .myclass ) 
* You blocks will be defined by indentation, so start to make a clean code.
* String must have '"'.
* There is no more inline content, everything is indented.

This is a basic.s ( A Sweet file )
*basic.s*

```
html
	head
		title
			"A Sweet basic demostration"
	body
		h1 #title
			"Welcome to Sweet"
		h2 .subtitle
			"Hope you enjoy it"
```

When we compile it

```
sweet basic.s
```

It becomes
*basic.html*

``` html
<html>
	<head>
		<title>
			A Sweet basic demostration
		</title>
	</head>
	<body>
		<h1 id='title'>
			Welcome to Sweet
		</h1>
		<h2 class='subtitle'>
			Hope you enjoy it
		</h2>
	</body>
</html>
```

### A Medium example

After a Really clean, smart and easy to use precompiled language we should make it **INSANE!**, 
then we bring to **Sweet** a little bit of server-side development to open your mind to impossible:

* Now you have Class, there is no excuse to a not organized code anymore
* Def's ( functions ), exactly like ruby
* Conditionals ( just if for now, without else, sorry about that )
* Multiple scopes ( everytime you indent your code you have a new scope )
* Local variables ( accessible just in the current scope )
* Global variables ( accessible everywhere )
* Constants ( TRUE, FALSE, NIL )

**Remember**
* A variable cant have a name of a tag 

This is a medium.s ( A Sweet file )
*medium.s*

```
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
```

When we compile it

```
sweet medium.s
```

It becomes
*medium.html*

``` html
<html >
	<head >
		<title >
			A Sweet medium demostration
		</title>
	</head>
	<body >
		<h1 id='title'>
			Welcome to Sweet
		</h1>
		<h2 class='subtitle'>
			Hope you keep enjoing it
		</h2>
		<div >
			It isn't getting hard, is getting sweet!
		</div>
	</body>
</html>
```

### A Sweet ( hard ) example

Let's stop jooking is time to take it to a next level, this isn't a hard example, cuz **Sweet** isn't hard, it was made to be simple.
We will just use all the features together in one *.s* file.

This is a hard.s ( A Sweet file )
*hard.s*

```
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
```

When we compile it

```
sweet hard.s
```

It becomes
*hard.html*

``` html
<html >
	<head >
		<title >
			A Sweet hard demostration
		</title>
	</head>
	<body >
		<h1 id='title'>
			Welcome to Sweet
		</h1>
		<h2 class='subtitle'>
			Hope you keep enjoing it
		</h2>
		<div id='user'>
			<ul id='content'>
				<li class='name'>
					Jonh Doe
				</li>
				<li class='status'>
					Logged
				</li>
			</ul>
		</div>
		<div id='logout'>
			<a href='logout'>
				Do you wanna logout
			</a>
		</div>
		<div id='login'>
			<form action='login' id='form'>
				<input type='text' id='email' />
			</form>
		</div>
	</body>
</html>

```

This is it!
------------

Well, this is **Sweet** i really hope you enjoy and use it a lot, I'm still working on it so dont be shy, let me know
if something get wrong opening a issue, then i can fix it and we help each other ;)
All examples are in examples folder.


Mailing List
------------

A place to talk about it.

http://groups.google.com/group/sweet-lang