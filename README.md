![Alt text](http://joaomdmoura.com/sweet/sweet.jpg "A Sweet Language")
# Sweet (current version - 0.1.0)
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

Sweet have to be simple, then we start thinking a new way to write a clean and smart syntax that compiles to HTML
So just a few tips:

* Forget '>', '<', '/','attribute="value"'.
* You blocks will be defined by indentation, so start to make a clean code.
* String must have '"'.
* There is no more inline content, everything is indented.

### A Basic example

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


After a Really clean, smart and easy to use precompiled language we should make it **INSANE!**, 
then we bring to **Sweet** a little bit of server-side development to open your mind to impossible:

* Now you have Class, there is no excuse to a not organized code anymore
* Def's ( functions ), exactly like ruby
* Conditionals ( just if for now, without else, sorry about that )
* Multiple scopes ( everytime you indent your code you have a new scope )
* Local variables ( accessible just in the current scope )
* Global variables ( accessible everywhere )
* Constants ( TRUE, FALSE, NIL )

### A Medium example

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