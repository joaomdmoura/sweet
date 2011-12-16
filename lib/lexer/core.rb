class Lexer
  KEYWORDS = ["def", "class", "if", "true", "false", "nil"]

  def treat(code)
    tags = Tags.new
    code = tags.implement_tag(code)
  end
  
  def tokenize(code)
    # Cleanup code by remove extra line breaks
    code.chomp!

    # Replacing all spaces, inputing tabs
    code = code.gsub( /[ ]+\n/, "\n" )
		code = code.gsub( "\n ", "\n\t" )
		code = code.gsub( /^\s*$/m, '' )
    
    tags = Tags.new

		code = treat(code)


    # Current character position we're parsing
    i = 0
    
    # Collection of all parsed tokens in the form [:TOKEN_TYPE, value]
    tokens = []
    
    # Current indent level is the number of spaces in the last indent.
    current_indent = 0
    # We keep track of the indentation levels we are in so that when we dedent, we can 
    # check if we're on the correct level.
    indent_stack = []
    
    # This is how to implement a very simple scanner.
    # Scan one character at the time until you find something to parse.
    while i < code.size
      chunk = code[i..-1]
      
      # Matching standard tokens.
      #
      # Matching if, print, method names, etc.
      if identifier = chunk[/\A([a-z]\w*)/, 1]
        # Keywords are special identifiers tagged with their own name, 'if' will result
        # in an [:IF, "if"] token
        if KEYWORDS.include?(identifier)
          tokens << [identifier.upcase.to_sym, identifier]
        # Non-keyword identifiers include method and variable names.
        else
          tokens << [:IDENTIFIER, identifier]
        end
        # skip what we just parsed
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
			elsif indent = chunk[/\A\n(\t+)/m, 1]
				# Create a new block we expect the indent level to go up.
				if indent.size < current_indent
					indent_stack.pop
					current_indent = indent_stack.last || 0
					tokens << [:DEDENT, indent.size]
					tokens << [:NEWLINE, "\n"]
								
				elsif indent.size == current_indent
					tokens << [:NEWLINE, "\n"]
					
				else
					# Adjust the current indentation level.
					current_indent = indent.size
					indent_stack.push(current_indent)
					tokens << [:INDENT, indent.size]
				end

				i += indent.size + 1

			elsif indent = chunk[/\A\n(	*)/m, 1]
				if indent.size == current_indent
					# Nothing to do, we're still in the same block
					tokens << [:NEWLINE, "\n"]
				elsif indent.size < current_indent
					indent_stack.pop
					current_indent = indent_stack.last || 0
					tokens << [:DEDENT, indent.size]
					tokens << [:NEWLINE, "\n"]
				end
				i += indent.size + 1
      
      # Match long operators such as ||, &&, ==, !=, <= and >=.
      # One character long operators are matched by the catch all `else` at the bottom.
      elsif operator = chunk[/\A(\|\||&&|==|!=|<=|>=)/, 1]
        tokens << [operator, operator]
        i += operator.size
      
      # Ignore whitespace
      elsif chunk.match(/\A /)
        i += 1
      
      # Catch all single characters
      # We treat all other single characters as a token. Eg.: ( ) , . ! + - <
      else
        value = chunk[0,1]
        tokens << [value, value]
        i += 1
        
      end
      
    end
    
    # Close all open blocks
    while indent = indent_stack.pop
      tokens << [:DEDENT, indent_stack.last || 0]
    end
    
    tokens
  end
end