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
* Support to Class, Def, Conditionals and Variables
 * Just If conditional for now ( whitout else )
 * Local and Global Variables ( down / uppercase eg. lol / Lol )
* SIC ( Sweet Interactive Console )
* Automaticly return of the last value of Def
* A small and cool extension ".s"

Installation
------------

Sweet is available through [Rubygems](http://rubygems.org/gems/sweet-lang) and can be installed via:

```
$ gem install sweet-lang
```

Usage
------------
Sweet have to be simple, then we start thinking a new way to write a clean and smart syntax that compiles to HTML
So just a few tips:

* Forget '>', '<', '/','attribute="value"'.
* You blocks will be defined by indentation, so start to make a clean code.
* String must have '"'.
* There is no more inline content, everything is indented.

**A Basic example**

This is a basic.s ( A Sweet file )
*basic.s*
```
html
	head
		title
			"A Sweer basic demostration"
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
```
<html>
	<head>
		<title>
		A Sweer basic demostration
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