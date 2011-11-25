class Strings

	def convert_string(code)
		strings = code.scan(/\t(\"[a-zA-Z0-9].*\")/)
		strings.each do |string|
			new_string = "print(#{string[0]})"
			code = code.gsub(string[0], new_string)
		end
		return code
	end

end