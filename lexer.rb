class Lexer
	KEYWORDS = ["def", "class", "if", "else", "true", "false", "nil"]

	def tokenize(code)
		code.chomp!
		# Replacing all spaces, inputing tabs
		code = code.gsub( "\n ", "\n\t" )
		code = code.gsub( /^\s*$/m, '' )
		
		general = code.scan(/(div(\n\t.*)+)/)
		general.each_with_index do |block, index|
			content = block[0].scan(/(\t+[a-zA-Z0-9]+.*)/)
			new_def = "def tag_#{index}\n\tprint(\"<div>\")"
			content.each do |lol|
				new_def += "\n" + lol[0]
			end
			new_def += "\n\tprint(\"</div>\")\ntag_#{index}"

			code = code.gsub(block[0], new_def)
		end

		i = 0
		tokens = []
		current_indent = 0
		indent_stack = []
		
		while i < code.size
			chunk = code[i..-1]
			# Matching if, print, method names, etc.
			if identifier = chunk[/\A([a-z]\w*)/, 1]
				if KEYWORDS.include?(identifier)
					tokens << [identifier.upcase.to_sym, identifier]
				# Non-keyword identifiers include method and variable names.
				else
					tokens << [:IDENTIFIER, identifier]
				end
				# skip what was just parsed
				i += identifier.size
			
			# Matching class names and constants starting with a capital letter.
			elsif constant = chunk[/\A([A-Z]\w*)/, 1]
				tokens << [:CONSTANT, constant]
				i += constant.size
				
			elsif number = chunk[/\A([0-9]+)/, 1]
				tokens << [:NUMBER, number.to_i]
				i += number.size
				
			elsif string = chunk[/\A"(.*?)"/, 1]
				tokens << [:STRING, string]
				i += string.size + 2
			
			# Here's the indentation magic!
			elsif indent = chunk[/\A\n(\t+)/m, 1] # Matches ": <newline> <spaces>"
				# Create a new block we expect the indent level to go up.
				if indent.size < current_indent
					raise "Bad indent level, got #{indent.size} indents, " +
								"expected > #{current_indent}"
								
				elsif indent.size == current_indent
					tokens << [:NEWLINE, "\n"]
					
				else
					# Adjust the current indentation level.
					current_indent = indent.size
					indent_stack.push(current_indent)
					tokens << [:INDENT, indent.size]
				end

				i += indent.size + 1

			elsif indent = chunk[/\A\n(	*)/m, 1] # Matches "<newline> <spaces>"
				if indent.size == current_indent
					# Nothing to do, we're still in the same block
					tokens << [:NEWLINE, "\n"]
				elsif indent.size < current_indent
					indent_stack.pop
					current_indent = indent_stack.first || 0
					tokens << [:DEDENT, indent.size]
					tokens << [:NEWLINE, "\n"]
				else
					# Cannot increase indent level without using ":", so this is an error.
					raise "Missing ':'"
				end
				i += indent.size + 1
			
			# Ignore whitespace
			elsif chunk.match(/\A /)
				i += 1
			
			# Treat all other single characters as a token. Eg.: ( ) , . !
			else
				value = chunk[0,1]
				tokens << [value, value]
				i += 1
				
			end
			
		end
		
		# Close all open blocks
		while indent = indent_stack.pop
			tokens << [:DEDENT, indent_stack.first || 0]
		end
		
		tokens
	end
end