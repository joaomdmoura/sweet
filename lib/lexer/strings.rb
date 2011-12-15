class Strings

	def convert_string(code, indent)
		strings = code.scan(/\t("[^"]+")/m)
		strings.uniq!
		strings.each do |string|
			original_tabs = code.scan(/((\t)+)#{string[0]}/)
			original_tabs = (!original_tabs[0].nil?) ? original_tabs[0][0].count("\t") : 1
			n_string = string[0].gsub( "<"," &lt;" ).gsub( ">"," &gt;" )
			n_string = n_string.gsub(/\n/, "<br />")
			get_tabs = n_string.scan(/((\t)+)/)
			get_tabs.each do |line|
				n_string = n_string.sub(/(\t)+/, "#{ '&nbsp;&nbsp;' * (line[0].count("\t") - original_tabs) }")
			end
			new_string = "print(#{n_string})"
			code = code.gsub(string[0], new_string)
		end
		return code
	end

end