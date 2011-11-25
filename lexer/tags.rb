class Tags

	def convert_tag(code, index, indent)
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
		new_def = "def tag_#{index}\n#{tab}print(\"<div>\")"
		content.each do |lol|
			new_def += "\n" + lol[0]
		end
		new_def += "\n#{tab}print(\"</div>\")\n#{p_tab}tag_#{index}"	
		return new_def
	end

	def implement_tag(code, indent=1)
		# p code
		general = code.scan(/(div(\n\t.*)+)/)
		# p general
		general.each_with_index do |block, index|
			last = block[0]
			strings = Strings.new
    	block[0] = strings.convert_string(block[0])
    	p block[0]
			
			if recrusive_general = block[0].match(/(\n\t+div(\n\t.*)+)/)
				new_indent = indent + 1
				new_block = implement_tag(recrusive_general[0], new_indent)
				block[0] = block[0].gsub(recrusive_general[0], new_block)
			end
			new_def = convert_tag( block[0] , index, indent)
			code = code.gsub(last, new_def)
		end
		return code
	end

end