# encoding: utf-8
class Tags

	@@inline_tags = [ "area", "img", "param", "input", "option", "base", "link", 
		"meta", "hr", "br", "wbr" ]

	@@tags = ["DOCTYPE","a","abbr","acronym","address","applet","b",
		"bdo","big","blockquote","body","button","caption","center","cite","code",
		"colgroup","dd","del","dfn","dir","div","dl","dt","em","fieldset","font",
		"form","frameset","h1","h2","h3","h4","h5","h6","head","html","i","iframe",
		"ins","kbd","label","legend","li","map","menu","noframes","noscript",
		"object","ol","optgroup","option","p","pre","q","s","samp","script",
		"select","small","span","strike","strong","style","sub","sup","table",
		"tbody","td","textarea","tfoot","th","thead","title","tr","tt","u","ul",
		"var"]

	def convert_tag(code, index, indent, tag, atr, inline=false)
		content = code.scan(/(\t+[\/"a-zA-Z0-9]+.*)/)
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
		if inline
			new_def = "#{p_tab}def tag_#{index}\n#{tab}print(\"<#{tag}#{(attributes.empty?) ? "" : " #{attributes}"}/>\")\n#{p_tab}tag_#{index}"
		else
			new_def = "def tag_#{index}\n#{tab}print(\"<#{tag}#{(attributes.empty?) ? "" : " #{attributes}"}>\")"
			content.each do |lol|
				new_def += "\n" + lol[0]
			end
			new_def += "\n#{tab}print(\"</#{tag}>\")\n#{p_tab}tag_#{index}"	
		end
		return new_def
	end

	def convert_attr(atr)
		atr.map {|x| x[0] + "'#{x[1]}'" }
	end

	def adding_attributes(code, tag, inline=false)
		_attr = [ [ "id", "#" ], [ "class", "\\." ] ]
		_attr.each do |a|
			if inline
				orig = code.scan(/^(\t)+?#{tag}([.a-zA-Z0-9=-_ ]+)? (#{a[1]}([a-zA-Z0-9_\-]+))/)
				orig.map! {|x| [x[2], x[3]] }
			else
				orig = code.scan(/^#{tag}([.a-zA-Z0-9=-_ ]+)? (#{a[1]}([a-zA-Z0-9_\-]+))/)
				orig.map! {|x| [x[1], x[2]] }
			end
			orig.uniq!
			orig.each do |_old|
				_new = " #{a[0]}=#{_old[1]}"
				code = code.gsub(/ #{_old[0]}/, _new)
			end
		end
		return code
	end

	def implement_tag(code, indent=1)
		new_code = []
		@strings = Strings.new
		@@inline_tags.each do |tag|
			general = code.scan(/(^((\t)+)?(#{tag}(()$| )([ #.=_\-a-zA-Z0-9:\/\?\+,]+)?))/)
			general.map! {|x| x[0]}
			general.each_with_index do |block, index|
				if new_indent = block.scan(/((\t)+)[^\t]/)[0]
					new_indent = block.scan(/((\t)+)[^\t]/)[0][0].count("\t") + 1
				else
					new_indent = indent
				end
				_code_block = block
				code_block = adding_attributes(block, tag, true)
				atr = code_block.scan(/([a-zA-Z0-9_-]+=)'?"?([\.\/:a-zA-Z0-9_-]+)'?"?/)		
				code_block = convert_tag( code_block , index, new_indent, tag, atr, true)
				code = code.gsub(_code_block, code_block)
			end
		end
		@@tags.each do |tag|
			general = code.scan(/(^(#{tag}(()$| )([ :;\/\?\+#.=_\-a-zA-Z0-9]+)?((\n\t.*)+)?).*)/)
			general_old = general
			general.map! {|x| x[1]}
			general.uniq!
			general.each_with_index do |block, index|
				_code_block = block
				code_block = adding_attributes(block, tag)
				code_block = @strings.treat_def(code_block)
				@@tags.each do |r_tag|
					regexp = /^(\t){#{indent}}(#{r_tag}(()$| )(((\n)?[a-zA-Z0-9= _\-#.\\'\/\"]+)+)?(((\n)+?\1{#{indent+1},})?(["\!\?#a= ()a-zA-Z0-9_.,\--\\'\/&éúíóáÉÚÍÓÁèùìòàÈÙÌÒÀõãñÕÃÑêûîôâÊÛÎÔÂëÿüïöäËYÜÏÖÄç]+)?)+)/m
					if !code_block.scan(regexp).empty?
						r_code = code_block.scan(regexp)
						r_code.each do |r|
							new_indent = indent + 1
							new_block = implement_tag(r[1], new_indent)
							code_block = code_block.gsub(r[1], new_block)
						end
					end
				end
				atr = code_block.scan(/([a-zA-Z0-9_-]+=)([\.\/:;#a-zA-Z0-9_-]+)/)
				code_block = @strings.convert_string( code_block, indent )
				code_block = convert_tag( code_block , index, indent, tag, atr)
				_code_block = _code_block.gsub("(", '\(')
				_code_block = _code_block.gsub(")", '\)')
				code = code.gsub(/^#{_code_block}$/m, code_block)
			end
		end
		code = @strings.fix_atr( code, indent )
		return code
	end

end