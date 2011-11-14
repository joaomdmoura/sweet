class Lexer
	KEYWORDS = ["def", "class", "if", "else", "true", "false", "nil", "while"]
	def tokenize(code)
		code.chomp!
		i = 0
		tokens = []
		current_indent = 0
		indent_stack = []
		while i < code.size
			chunk = code[i..-1]
			if identifier = chunk[/\A([a-z]\w*)/, 1]
				if KEYWORDS.include?(identifier)
					tokens << [identifier.upcase.to_sym, identifier]
				else
					tokens << [:IDENTIFIER, identifier]
				end
				i += identifier.size
			elsif constant = chunk[/\A([A-Z]\w*)/, 1]
				tokens << [:CONSTANT, constant]
				i += constant.size	
			elsif number = chunk[/\A([0-9]+)/, 1]
				tokens << [:NUMBER, number.to_i]
				i += number.size
			elsif string = chunk[/\A"(.*?)"/, 1]
				tokens << [:STRING, string]
				i += string.size + 2
			elsif indent = chunk[/\A\n(	*)/m, 1]
				if indent.size > current_indent
					current_indent = indent.size
					indent_stack.push(current_indent)
					tokens << [:INDENT, indent.size]
					i += indent.size + 1
				elsif indent.size < current_indent
					lol = chunk.split("\n")
					if lol[0] == "" && lol[1] == ""
						tokens << [:NEWLINE, "\n"]
						i += indent.size + 1
					else
						times = current_indent - indent.size
						for passed in 1..times.to_i
							indent_stack.pop
						end
						current_indent = indent_stack.last || 0
						tokens << [:DEDENT, indent.size]
						tokens << [:NEWLINE, "\n"]
						i += indent.size + 1
					end
				elsif indent.size == current_indent
					tokens << [:NEWLINE, "\n"]
					i += indent.size + 1
				end
			elsif chunk.match(/\A /)
				i += 1
			else
				value = chunk[0,1]
				tokens << [value, value]
				i += 1
			end
		end
		while indent = indent_stack.pop
			tokens << [:DEDENT, indent_stack.first || 0]
		end
		tokens
	end
end