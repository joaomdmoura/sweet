class Strings

	def convert_string(code, indent)
		strings = code.scan(/\t("[^"]+")/m)
		strings.uniq!
		strings.each do |string|
			original_tabs = code.scan(/((\t)+)#{string[0]}/)
			original_tabs = (!original_tabs[0].nil?) ? original_tabs[0][0].count("\t") : 1
			n_string = string[0].gsub( "<"," &lt;" ).gsub( ">"," &gt;" )
			n_string = n_string.gsub(/\n/, "<br />")
			n_string = n_string.gsub("=", "\\=")
			get_tabs = n_string.scan(/((\t)+)/)
			get_tabs.each do |line|
				actual_tab = line[0].count("\t")
				if actual_tab <= original_tabs
					n_string = n_string.sub(/(\t)+/, "#{ '&nbsp;&nbsp;' * actual_tab }")
				else
					n_string = n_string.sub(/(\t)+/, "#{ '&nbsp;&nbsp;' * (actual_tab - original_tabs) }")
				end
			end
			new_string = "print(#{n_string})"
			code = code.gsub(string[0], new_string)
		end
		return code
	end

	def fix_atr(code, indent)
		strings = code.scan(/print\(.*\)/m)
		strings.uniq!
		n_string = strings[0].gsub("\\=", "=")
		code = code.gsub(strings[0], n_string)
		return code
	end

end