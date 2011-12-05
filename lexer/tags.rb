class Tags

	@@tags = ["!--...--","DOCTYPE","a","abbr","acronym","address","applet","b",
		"bdo","big","blockquote","body","button","caption","center","cite","code",
		"colgroup","dd","del","dfn","dir","div","dl","dt","em","fieldset","font",
		"form","frameset","h1","h2","h3","h4","h5","h6","head","html","i","iframe",
		"ins","kbd","label","legend","li","map","menu","noframes","noscript",
		"object","ol","optgroup","option","p","pre","q","s","samp","script",
		"select","small","span","strike","strong","style","sub","sup","table",
		"tbody","td","textarea","tfoot","th","thead","title","tr","tt","u","ul",
		"var"]

	def convert_tag(code, index, indent, tag, atr)
		content = code.scan(/(\t+[a-zA-Z0-9]+.*)/)
		tab = ""
		p_tab = ""
		for i in 0..indent
			if i == (indent - 1 )
				p_tab = tab
			else
				tab += "\t"
			end
		end
		attributes = convert_attr(atr).join(" ")
		new_def = "def tag_#{index}\n#{tab}print(\"<#{tag} #{attributes}>\")"
		content.each do |lol|
			new_def += "\n" + lol[0]
		end
		new_def += "\n#{tab}print(\"</#{tag}>\")\n#{p_tab}tag_#{index}"	
		return new_def
	end

	def convert_attr(atr)
		atr.map {|x| x[0] + "'#{x[1]}'" }
	end

	def adding_attributes(code, tag)
		_attr = [ [ "id", "#" ], [ "class", "\\." ] ]
		_attr.each do |a|
			orig = code.scan(/#{tag} ([.a-zA-Z0-9=-_ ]+)?(#{a[1]}([a-zA-Z0-9]+))/)
			orig.map! {|x| [x[1], x[2]] }
			orig.uniq!
			orig.each do |_old|
				_new = "#{a[0]}=#{_old[1]}"
				code = code.gsub(_old[0], _new)
			end
		end
		return code
	end

	def implement_tag(code, indent=1)
		@@tags.each do |tag|
			general = code.scan(/^(#{tag}([ #.=_\-a-zA-Z0-9]+)?((\n\t.*)+)?)/)
			general.each_with_index do |block, index|
				_code_block = block[0]
				code_block = adding_attributes(block[0], tag)
				@@tags.each do |r_tag|
					if !code_block.scan(/^(\t){#{indent}}(#{r_tag}(()\n| )([a-zA-Z0-9= \t_\-#.]+)?((\n\1{#{indent+1},})?["#a= ()a-zA-Z0-9_.-]+)+)/m).empty?
						r_code = code_block.scan(/^(\t){#{indent}}(#{r_tag}(()\n| )([a-zA-Z0-9= \t_\-#.]+)?((\n\1{#{indent+1},})?["#a= ()a-zA-Z0-9_.-]+)+)/m)
						r_code.each do |r|
							new_indent = indent + 1
							new_block = implement_tag(r[1], new_indent)
							code_block = code_block.gsub(r[1], new_block)
						end
					end
				end
				strings = Strings.new
				code_block = strings.convert_string( code_block )
				atr = code_block.scan(/([a-zA-Z0-9_-]+=)([a-zA-Z0-9_-]+)/)
				code_block = convert_tag( code_block , index, indent, tag, atr)
				code = code.gsub(_code_block, code_block)
			end
		end
		return code
	end

end