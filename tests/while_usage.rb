Given /^write a sweet code with while loop usage$/ do
 $sweet_code = <<-EOS
class Loop
	def while_usage(times)
		i = 0
		val = ""
		while i < times
			val = val + ( i + 1 )
			i = i + 1
		val

Result = Loop.new
		
ul #content
	li #1times
		print(Result.while_usage(1))
	li #10times
		print(Result.while_usage(10))
	li #100times
		print(Result.while_usage(25))
EOS

	$compiled_code = <<-EOS
<ul id='content'>
	<li id='1times'>
		1
	</li>
	<li id='10times'>
		12345678910
	</li>
	<li id='100times'>
		12345678910111213141516171819202122232425
	</li>
</ul>
EOS
end