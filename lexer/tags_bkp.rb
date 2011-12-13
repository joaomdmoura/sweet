class Tags

	@@tags = ["!--...--","!DOCTYPE","a","abbr","acronym","address","applet","b",
		"bdo","big","blockquote","body","button","caption","center","cite","code",
		"colgroup","dd","del","dfn","dir","div","dl","dt","em","fieldset","font",
		"form","frameset","h1","h2","h3","h4","h5","h6","head","html","i","iframe",
		"ins","kbd","label","legend","li","map","menu","noframes","noscript",
		"object","ol","optgroup","option","p","pre","q","s","samp","script",
		"select","small","span","strike","strong","style","sub","sup","table",
		"tbody","td","textarea","tfoot","th","thead","title","tr","tt","u","ul",
		"var"]

	def convert_tag(code, index, indent, tag)
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
		new_def = "def tag_#{index}\n#{tab}print(\"<#{tag}>\")"
		content.each do |lol|
			new_def += "\n" + lol[0]
		end
		new_def += "\n#{tab}print(\"</#{tag}>\")\n#{p_tab}tag_#{index}"	
		return new_def
	end

	def implement_tag(code, indent=1)
		@@tags.each do |tag|
			general = code.scan(/^(#{tag}(\n\t.*)+)/)
			general.each_with_index do |block, index|
				last = block[0]
				strings = Strings.new
				block[0] = strings.convert_string(block[0])
				@@tags.each do |recursive_tag|
					if recrusive_general = block[0].match(/(\n\t+)(#{recursive_tag}(\n\t.*)+)/)
						p "========================================"
						p recrusive_general[2]
						p "========================================"

						# if block[0].scan(/(\n\t+)(#{recursive_tag}(\n\t.+))+/).size > 1
						# 	@@tags.each do |recursive_tag2|
						# 		recrusive = block[0].scan(/(\n\t+)(#{recursive_tag2}(\n\t.+))+/)
						# 		recrusive.each do |r_|
						# 			new_indent = r_[1].scan(/\t/).size
						# 			new_block = implement_tag(r_[1], new_indent)
						# 			block[0] = block[0].gsub(r_[1], new_block)
						# 		end
						# 	end
						# end
						new_indent = indent + block[0].match(/(\n\t+)(#{recursive_tag}\n\t.*)/)[0].split(/\t/).size / 2 - indent
						new_block = implement_tag(recrusive_general[2], new_indent)
						block[0] = block[0].gsub(recrusive_general[2], new_block)
					end
				end
				new_def = convert_tag( block[0] , index, indent, tag)
				code = code.gsub(last, new_def)
			end
		end
		return code
	end

end