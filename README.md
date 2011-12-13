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

Installation
------------

Sweet is available through [Rubygems](http://rubygems.org/gems/sweet) and can be installed via:

```
$ gem install sweet
```

Introduction
------------

```
class Sweet
  def does_it_work
		"Uhmmm...this is so sweet"

div
	test = Sweet.new
	print(test.does_it_work)
```

Will compile to

```
<div >
Uhmmm...this is so sweet
</div>
```