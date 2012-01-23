Given /^write a sweet code with conditionals$/ do
 $sweet_code = <<-EOS
class Conditionals
	
	def if_without_else(var)
		if var
			"passed"

	def if_with_else(var)
		if var
			"passed"
		else
			"don't passed"

Test = Conditionals.new

ul #conditionals
	li #if_without_else .true
		print(Test.if_without_else(true))
	li #if_without_else .false
		print(Test.if_without_else(false))

ul
	li #if_with_else .true
		print(Test.if_with_else(true))
	li #if_with_else .false
		print(Test.if_with_else(false))
EOS

	$compiled_code = <<-EOS
<ul id='conditionals'>
	<li id='if_without_else' class='true'>
		passed
	</li>
	<li id='if_without_else' class='false'>
	</li>
</ul>
<ul>
	<li id='if_with_else' class='true'>
		passed
	</li>
	<li id='if_with_else' class='false'>
		don't passed
	</li>
</ul>
EOS
end