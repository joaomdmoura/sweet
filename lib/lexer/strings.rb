class Strings

	def convert_string(code, indent, defs=false)
		strings = code.scan(/\t("[^"]+")/m)
		defs_back = code.scan(/\t(\/("[^"]+")\/)/m)
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
			new_string = ( defs ) ? "/#{n_string}/" : "print(#{n_string})"
			code = code.gsub(string[0], new_string)
		end
		return code
	end

	def treat_def(code)
		defs = code.scan(/^(\t*)(def(()$| )(((\n)?[a-zA-Z0-9= _\-#.\\'\/\"]+)+)?(((\n)+?\1{1,}\t+)?(["#a= ()a-zA-Z0-9_.,\--\\'\/&]+)?)+)/)
		defs.map! {|x| x[1]}
		defs.each do |def_|
			code = code.gsub(def_, convert_string( def_, 1, true ))
		end
		code
	end

	def rollingback_strings(code)
		defs_back = code.scan(/\t(\/("[^"]+")\/)/m)
		defs_back.each do |def_|
			code = code.gsub(def_[0], def_[1])
		end
		code
	end

	def fix_atr(code, indent)
		strings = code.scan(/print\(.*\)/m)
		strings.uniq!
		n_string = strings[0].gsub("\\=", "=")
		code = code.gsub(strings[0], n_string)
		code
	end

end