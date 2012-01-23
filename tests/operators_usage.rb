Given /^write a sweet code with a lot of operators$/ do
 $sweet_code = <<-EOS
class Operators
	
	def plus (arg_1, arg_2)
		arg_1 + arg_2
	
	def sub (arg_1, arg_2)
		arg_1 - arg_2

	def div (arg_1, arg_2)
		arg_1 / arg_2
	
	def mul (arg_1, arg_2)
		arg_1 * arg_2

Calculator = Operators.new

div #integers
	print(Calculator.plus(1, 2))
	print(Calculator.sub(10, 20))
	print(Calculator.div(50, 2))
	print(Calculator.mul(100, 2))

div #strings
	print(Calculator.plus("Jonh", " Doe"))
EOS

	$compiled_code = <<-EOS
<div id='integers'>
	3
	-10
	25
	200
</div>
<div id='strings'>
	Jonh Doe
</div>
EOS
end