$:.unshift "." # Fix for Ruby 1.9
		# notify_info 'New email received', :sticky => true, :title => 'Some app'; sleep 0.2
		# imagepath = 'growl/spec/fixtures/image.png'
		# notify 'Lexer Okay', :icon => imagepath ; sleep 0.5
require "lexer.rb"

code = <<-EOS
div
	div
		img src=lol
EOS

p Lexer.new.tokenize(code)

# [[:DEF, "def"], [:IDENTIFIER, "tag_0"], [:INDENT, 1]
# 	, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<div>"], [")", ")"], [:NEWLINE, "\n"]
# 	, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:INDENT, 2]
# 		, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<table>"], [")", ")"], [:NEWLINE, "\n"]
# 		, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:INDENT, 3]
# 			, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<tr>"], [")", ")"], [:NEWLINE, "\n"]
# 			, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:NEWLINE, "\n"]
# 			, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</tr>"], [")", ")"], [:DEDENT, 2], [:NEWLINE, "\n"]

# 		, [:IDENTIFIER, "tag_0"], [:INDENT, 4]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<td>"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:IDENTIFIER, "print"], ["(", "("], [:STRING, "joao"], [")", ")"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</td>"], [")", ")"], [:DEDENT, 3], [:NEWLINE, "\n"]

# 			, [:IDENTIFIER, "tag_0"], [:INDENT, 3]
# 			, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:INDENT, 4]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<td>"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:IDENTIFIER, "print"], ["(", "("], [:STRING, "marcos"], [")", ")"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</td>"], [")", ")"], [:DEDENT, 3], [:NEWLINE, "\n"]

# 			, [:IDENTIFIER, "tag_0"], [:DEDENT, 2], [:NEWLINE, "\n"]

# 		, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:INDENT, 3]
# 			, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<tr>"], [")", ")"], [:NEWLINE, "\n"]
# 			, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:NEWLINE, "\n"]
# 			, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</tr>"], [")", ")"], [:DEDENT, 2], [:NEWLINE, "\n"]

# 		, [:IDENTIFIER, "tag_0"], [:INDENT, 4]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<td>"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:IDENTIFIER, "print"], ["(", "("], [:STRING, "joao"], [")", ")"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</td>"], [")", ")"], [:DEDENT, 3], [:NEWLINE, "\n"]

# 			, [:IDENTIFIER, "tag_0"], [:INDENT, 3]
# 			, [:DEF, "def"], [:IDENTIFIER, "tag_0"], [:INDENT, 4]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "<td>"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:IDENTIFIER, "print"], ["(", "("], [:STRING, "marcos"], [")", ")"], [")", ")"], [:NEWLINE, "\n"]
# 				, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</td>"], [")", ")"], [:DEDENT, 3], [:NEWLINE, "\n"]

# 			, [:IDENTIFIER, "tag_0"], [:DEDENT, 2], [:NEWLINE, "\n"]

# 		, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</table>"], [")", ")"], [:DEDENT, 1], [:NEWLINE, "\n"]

# 	, [:IDENTIFIER, "tag_0"], [:NEWLINE, "\n"]
# 	, [:IDENTIFIER, "print"], ["(", "("], [:STRING, "</div>"], [")", ")"], [:DEDENT, 0], [:NEWLINE, "\n"]

# , [:IDENTIFIER, "tag_0"]]

# Output:
# [[:IF, "if"], [:NUMBER, 1],
#  [:INDENT, 2], [:IDENTIFIER, "print"], [:STRING, "..."], [:NEWLINE, "\n"],
#                [:IF, "if"], [:IDENTIFIER, "false"],
#                [:INDENT, 4], [:IDENTIFIER, "pass"],
#                [:DEDENT, 2], [:NEWLINE, "\n"],
#                [:IDENTIFIER, "print"], [:STRING, "done!"],
#  [:DEDENT, 0], [:NEWLINE, "\n"],
#  [:IDENTIFIER, "print"], [:STRING, "The End"]]