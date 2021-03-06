#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lexer"
  require "nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 184)
  # This code will be put as-is in the Parser class.
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code) # Tokenize the code using our lexer
    puts @tokens.inspect if show_tokens
    do_parse # Kickoff the parsing process
  end
  
  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    27,    15,    25,    26,    15,    17,    18,    19,    20,    21,
    22,    24,    31,    90,    28,    89,    23,    46,    27,    45,
    25,    26,    15,    17,    18,    19,    20,    21,    22,    24,
    16,    14,    28,    16,    23,    81,    27,    93,    25,    26,
    31,    17,    18,    19,    20,    21,    22,    24,    79,    14,
    28,    16,    23,    81,    27,    80,    25,    26,    75,    17,
    18,    19,    20,    21,    22,    24,    83,    14,    28,    31,
    23,    86,    27,    55,    25,    26,    53,    17,    18,    19,
    20,    21,    22,    24,    50,    14,    28,    49,    23,    92,
    27,    48,    25,    26,    29,    17,    18,    19,    20,    21,
    22,    24,    75,    14,    28,    95,    23,    75,    27,   nil,
    25,    26,   nil,    17,    18,    19,    20,    21,    22,    24,
   nil,    14,    28,   nil,    23,   nil,    27,   nil,    25,    26,
   nil,    17,    18,    19,    20,    21,    22,    24,   nil,    14,
    28,   nil,    23,   nil,    27,   nil,    25,    26,   nil,    17,
    18,    19,    20,    21,    22,    24,   nil,    14,    28,   nil,
    23,   nil,    27,   nil,    25,    26,   nil,    17,    18,    19,
    20,    21,    22,    24,   nil,    14,    28,   nil,    23,   nil,
    27,   nil,    25,    26,   nil,    17,    18,    19,    20,    21,
    22,    24,   nil,    14,    28,   nil,    23,   nil,    27,   nil,
    25,    26,   nil,    17,    18,    19,    20,    21,    22,    24,
   nil,    14,    28,   nil,    23,   nil,    27,   nil,    25,    26,
   nil,    17,    18,    19,    20,    21,    22,    24,   nil,    14,
    28,   nil,    23,   nil,    27,   nil,    25,    26,   nil,    17,
    18,    19,    20,    21,    22,    24,   nil,    14,    28,   nil,
    23,   nil,    27,   nil,    25,    26,   nil,    17,    18,    19,
    20,    21,    22,    24,   nil,    14,    28,   nil,    23,   nil,
    27,   nil,    25,    26,   nil,    17,    18,    19,    20,    21,
    22,    24,   nil,    14,    28,   nil,    23,   nil,    27,   nil,
    25,    26,   nil,    17,    18,    19,    20,    21,    22,    24,
   nil,    14,    28,   nil,    23,   nil,    27,   nil,    25,    26,
   nil,    17,    18,    19,    20,    21,    22,    24,   nil,    14,
    28,   nil,    23,   nil,    27,   nil,    25,    26,   nil,    17,
    18,    19,    20,    21,    22,    24,   nil,    14,    28,   nil,
    23,   nil,    27,   nil,    25,    26,   nil,    17,    18,    19,
    20,    21,    22,    24,   nil,    14,    28,   nil,    23,   nil,
    27,   nil,    25,    26,   nil,    17,    18,    19,    20,    21,
    22,    24,   nil,    14,    28,   nil,    23,   nil,    27,   nil,
    25,    26,   nil,    17,    18,    19,    20,    21,    22,    24,
   nil,    14,    28,   nil,    23,   nil,    27,   nil,    25,    26,
   nil,    17,    18,    19,    20,    21,    22,    24,   nil,    14,
    28,   nil,    23,    75,    27,   nil,    25,    26,   nil,    17,
    18,    19,    20,    21,    22,    24,    15,    14,    28,   nil,
    23,   nil,    74,   nil,    31,    91,    42,    43,    40,    41,
    36,    37,    38,    39,    31,    14,    42,    43,    40,    41,
    36,    37,    38,    39,    31,    16,    42,    43,    40,    41,
    36,    37,    38,    39,    34,    35,    33,    32,   nil,    75,
   nil,    68,    31,   nil,    42,    43,    40,    41,    36,    37,
    38,    39,    34,    35,    33,    32,    75,   nil,   nil,    31,
   nil,    42,    43,    40,    41,    36,    37,    38,    39,    34,
    35,    33,    32,    31,   nil,    42,    43,    40,    41,    36,
    37,    38,    39,    34,    35,    33,    32,    31,   nil,    42,
    43,    40,    41,    36,    37,    38,    39,    34,    35,    33,
    32,    31,   nil,    42,    43,    40,    41,    36,    37,    38,
    39,    34,    35,    33,    32,    31,   nil,    42,    43,    40,
    41,    36,    37,    38,    39,    34,    35,    33,    32,    31,
   nil,    42,    43,    40,    41,    36,    37,    38,    39,    34,
    35,    33,    32,    31,   nil,    42,    43,    40,    41,    36,
    37,    38,    39,    34,    35,    33,    32,    31,   nil,    42,
    43,    40,    41,    36,    37,    38,    39,    34,    35,    33,
    31,   nil,    42,    43,    40,    41,    36,    37,    38,    39,
    34,    35,    31,   nil,    42,    43,    40,    41,    31,   nil,
    42,    43,    40,    41,    31,   nil,    42,    43,    40,    41,
    31,   nil,    42,    43,    40,    41,    31,   nil,    42,    43,
    31,   nil,    42,    43 ]

racc_action_check = [
     0,     2,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,    67,    82,     0,    82,     0,    22,    75,    22,
    75,    75,    75,    75,    75,    75,    75,    75,    75,    75,
     2,     0,    75,     0,    75,    87,    28,    87,    28,    28,
    66,    28,    28,    28,    28,    28,    28,    28,    55,    75,
    28,    75,    28,    69,    46,    69,    46,    46,    50,    46,
    46,    46,    46,    46,    46,    46,    74,    28,    46,    47,
    46,    77,    14,    31,    14,    14,    29,    14,    14,    14,
    14,    14,    14,    14,    26,    46,    14,    25,    14,    86,
    45,    24,    45,    45,     1,    45,    45,    45,    45,    45,
    45,    45,    89,    14,    45,    90,    45,    92,    23,   nil,
    23,    23,   nil,    23,    23,    23,    23,    23,    23,    23,
   nil,    45,    23,   nil,    23,   nil,    43,   nil,    43,    43,
   nil,    43,    43,    43,    43,    43,    43,    43,   nil,    23,
    43,   nil,    43,   nil,    40,   nil,    40,    40,   nil,    40,
    40,    40,    40,    40,    40,    40,   nil,    43,    40,   nil,
    40,   nil,    41,   nil,    41,    41,   nil,    41,    41,    41,
    41,    41,    41,    41,   nil,    40,    41,   nil,    41,   nil,
    27,   nil,    27,    27,   nil,    27,    27,    27,    27,    27,
    27,    27,   nil,    41,    27,   nil,    27,   nil,    48,   nil,
    48,    48,   nil,    48,    48,    48,    48,    48,    48,    48,
   nil,    27,    48,   nil,    48,   nil,    81,   nil,    81,    81,
   nil,    81,    81,    81,    81,    81,    81,    81,   nil,    48,
    81,   nil,    81,   nil,    30,   nil,    30,    30,   nil,    30,
    30,    30,    30,    30,    30,    30,   nil,    81,    30,   nil,
    30,   nil,    79,   nil,    79,    79,   nil,    79,    79,    79,
    79,    79,    79,    79,   nil,    30,    79,   nil,    79,   nil,
    32,   nil,    32,    32,   nil,    32,    32,    32,    32,    32,
    32,    32,   nil,    79,    32,   nil,    32,   nil,    33,   nil,
    33,    33,   nil,    33,    33,    33,    33,    33,    33,    33,
   nil,    32,    33,   nil,    33,   nil,    34,   nil,    34,    34,
   nil,    34,    34,    34,    34,    34,    34,    34,   nil,    33,
    34,   nil,    34,   nil,    35,   nil,    35,    35,   nil,    35,
    35,    35,    35,    35,    35,    35,   nil,    34,    35,   nil,
    35,   nil,    36,   nil,    36,    36,   nil,    36,    36,    36,
    36,    36,    36,    36,   nil,    35,    36,   nil,    36,   nil,
    37,   nil,    37,    37,   nil,    37,    37,    37,    37,    37,
    37,    37,   nil,    36,    37,   nil,    37,   nil,    38,   nil,
    38,    38,   nil,    38,    38,    38,    38,    38,    38,    38,
   nil,    37,    38,   nil,    38,   nil,    39,   nil,    39,    39,
   nil,    39,    39,    39,    39,    39,    39,    39,   nil,    38,
    39,   nil,    39,    49,    42,   nil,    42,    42,   nil,    42,
    42,    42,    42,    42,    42,    42,    84,    39,    42,   nil,
    42,   nil,    49,   nil,    59,    84,    59,    59,    59,    59,
    59,    59,    59,    59,    58,    42,    58,    58,    58,    58,
    58,    58,    58,    58,    44,    84,    44,    44,    44,    44,
    44,    44,    44,    44,    44,    44,    44,    44,   nil,    51,
   nil,    44,    51,   nil,    51,    51,    51,    51,    51,    51,
    51,    51,    51,    51,    51,    51,    52,   nil,   nil,    52,
   nil,    52,    52,    52,    52,    52,    52,    52,    52,    52,
    52,    52,    52,    71,   nil,    71,    71,    71,    71,    71,
    71,    71,    71,    71,    71,    71,    71,    88,   nil,    88,
    88,    88,    88,    88,    88,    88,    88,    88,    88,    88,
    88,    54,   nil,    54,    54,    54,    54,    54,    54,    54,
    54,    54,    54,    54,    54,    72,   nil,    72,    72,    72,
    72,    72,    72,    72,    72,    72,    72,    72,    72,    70,
   nil,    70,    70,    70,    70,    70,    70,    70,    70,    70,
    70,    70,    70,     3,   nil,     3,     3,     3,     3,     3,
     3,     3,     3,     3,     3,     3,     3,    56,   nil,    56,
    56,    56,    56,    56,    56,    56,    56,    56,    56,    56,
    57,   nil,    57,    57,    57,    57,    57,    57,    57,    57,
    57,    57,    62,   nil,    62,    62,    62,    62,    61,   nil,
    61,    61,    61,    61,    60,   nil,    60,    60,    60,    60,
    63,   nil,    63,    63,    63,    63,    65,   nil,    65,    65,
    64,   nil,    64,    64 ]

racc_action_pointer = [
    -2,    94,    -5,   556,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    70,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   -14,   106,    60,    75,    71,   178,    34,    76,
   232,    61,   268,   286,   304,   322,   340,   358,   376,   394,
   142,   160,   412,   124,   437,    88,    52,    52,   196,   399,
    44,   455,   472,   nil,   514,    15,   570,   583,   427,   417,
   607,   601,   595,   613,   623,   619,    23,    -5,   nil,    21,
   542,   486,   528,   nil,    54,    16,   nil,    65,   nil,   250,
   nil,   214,   -19,   nil,   420,   nil,    86,     3,   500,    88,
    93,   nil,    93,   nil,   nil,   nil,   nil ]

racc_action_default = [
    -1,   -59,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -59,   -17,   -18,   -19,   -20,   -21,
   -22,   -23,   -24,   -59,   -44,   -59,   -59,   -59,   -59,   -59,
    -5,   -59,   -59,   -59,   -59,   -59,   -59,   -59,   -59,   -59,
   -59,   -59,   -59,   -59,   -59,   -28,   -59,   -43,   -59,   -59,
   -59,   -59,   -59,    97,    -4,   -26,   -31,   -32,   -33,   -34,
   -35,   -36,   -37,   -38,   -39,   -40,   -41,   -42,   -16,   -59,
   -29,   -45,   -46,   -47,   -49,   -59,   -52,   -56,   -57,   -28,
   -25,   -59,   -59,   -50,   -59,   -53,   -55,   -59,   -30,   -59,
   -59,   -58,   -59,   -27,   -48,   -51,   -54 ]

racc_goto_table = [
    30,     2,    44,    73,    76,    77,    78,    69,     1,    82,
    85,    47,   nil,   nil,   nil,    51,    52,   nil,    54,   nil,
    56,    57,    58,    59,    60,    61,    62,    63,    64,    65,
    66,    67,   nil,    70,    71,   nil,    72,   nil,   nil,   nil,
   nil,    87,   nil,    94,   nil,   nil,    96,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    70,   nil,    88,
   nil,   nil,   nil,   nil,   nil,   nil,    84,   nil,   nil,   nil,
   nil,   nil,    30 ]

racc_goto_check = [
     4,     2,     3,    15,    15,    15,    15,    14,     1,    16,
    17,     3,   nil,   nil,   nil,     3,     3,   nil,     3,   nil,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,   nil,     3,     3,   nil,     3,   nil,   nil,   nil,
   nil,    14,   nil,    15,   nil,   nil,    15,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     3,   nil,     3,
   nil,   nil,   nil,   nil,   nil,   nil,     2,   nil,   nil,   nil,
   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,     8,     1,   -12,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   -38,   -46,   -65,   -67 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 37, :_reduce_1,
  1, 37, :_reduce_2,
  1, 38, :_reduce_3,
  3, 38, :_reduce_4,
  2, 38, :_reduce_5,
  1, 38, :_reduce_6,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  3, 39, :_reduce_16,
  1, 40, :_reduce_none,
  1, 40, :_reduce_none,
  1, 41, :_reduce_19,
  1, 41, :_reduce_20,
  1, 41, :_reduce_21,
  1, 41, :_reduce_22,
  1, 41, :_reduce_23,
  1, 42, :_reduce_24,
  4, 42, :_reduce_25,
  3, 42, :_reduce_26,
  6, 42, :_reduce_27,
  0, 50, :_reduce_28,
  1, 50, :_reduce_29,
  3, 50, :_reduce_30,
  3, 43, :_reduce_31,
  3, 43, :_reduce_32,
  3, 43, :_reduce_33,
  3, 43, :_reduce_34,
  3, 43, :_reduce_35,
  3, 43, :_reduce_36,
  3, 43, :_reduce_37,
  3, 43, :_reduce_38,
  3, 43, :_reduce_39,
  3, 43, :_reduce_40,
  3, 43, :_reduce_41,
  3, 43, :_reduce_42,
  2, 43, :_reduce_43,
  1, 44, :_reduce_44,
  3, 45, :_reduce_45,
  3, 45, :_reduce_46,
  3, 46, :_reduce_47,
  6, 46, :_reduce_48,
  0, 52, :_reduce_49,
  1, 52, :_reduce_50,
  3, 52, :_reduce_51,
  3, 47, :_reduce_52,
  4, 49, :_reduce_53,
  3, 53, :_reduce_54,
  1, 53, :_reduce_55,
  0, 53, :_reduce_56,
  3, 48, :_reduce_57,
  3, 51, :_reduce_58 ]

racc_reduce_n = 59

racc_shift_n = 97

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :ELSE => 3,
  :DEF => 4,
  :CLASS => 5,
  :NEWLINE => 6,
  :NUMBER => 7,
  :STRING => 8,
  :TRUE => 9,
  :FALSE => 10,
  :NIL => 11,
  :IDENTIFIER => 12,
  :CONSTANT => 13,
  :INDENT => 14,
  :DEDENT => 15,
  :WHILE => 16,
  "." => 17,
  "!" => 18,
  "*" => 19,
  "/" => 20,
  "+" => 21,
  "-" => 22,
  ">" => 23,
  ">=" => 24,
  "<" => 25,
  "<=" => 26,
  "==" => 27,
  "!=" => 28,
  "&&" => 29,
  "||" => 30,
  "=" => 31,
  "," => 32,
  "(" => 33,
  ")" => 34,
  ";" => 35 }

racc_nt_base = 36

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IF",
  "ELSE",
  "DEF",
  "CLASS",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "TRUE",
  "FALSE",
  "NIL",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "WHILE",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Root",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "Constant",
  "Assign",
  "Def",
  "Class",
  "While",
  "If",
  "ArgList",
  "Block",
  "ParamList",
  "Else" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 45)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 46)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 51)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 52)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 54)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 55)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

module_eval(<<'.,.,', 'grammar.y', 69)
  def _reduce_16(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 17 omitted

# reduce 18 omitted

module_eval(<<'.,.,', 'grammar.y', 80)
  def _reduce_19(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_20(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 82)
  def _reduce_21(val, _values, result)
     result = TrueNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 83)
  def _reduce_22(val, _values, result)
     result = FalseNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 84)
  def _reduce_23(val, _values, result)
     result = NilNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 90)
  def _reduce_24(val, _values, result)
     result = CallNode.new(nil, val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 92)
  def _reduce_25(val, _values, result)
     result = CallNode.new(nil, val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 94)
  def _reduce_26(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 97)
  def _reduce_27(val, _values, result)
     result = CallNode.new(val[0], val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 101)
  def _reduce_28(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_29(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 103)
  def _reduce_30(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 108)
  def _reduce_31(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 109)
  def _reduce_32(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 110)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 111)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 112)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 113)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 114)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 115)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 116)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 117)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 118)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 119)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 120)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[1],val[0],[]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 124)
  def _reduce_44(val, _values, result)
     result = GetConstantNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 129)
  def _reduce_45(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 130)
  def _reduce_46(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 135)
  def _reduce_47(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 137)
  def _reduce_48(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 141)
  def _reduce_49(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 142)
  def _reduce_50(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 143)
  def _reduce_51(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 148)
  def _reduce_52(val, _values, result)
     result = ClassNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 153)
  def _reduce_53(val, _values, result)
     result = IfNode.new(val[1], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 158)
  def _reduce_54(val, _values, result)
     result = val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 159)
  def _reduce_55(val, _values, result)
     result = NIL 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 160)
  def _reduce_56(val, _values, result)
     result = NIL 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 165)
  def _reduce_57(val, _values, result)
     result = WhileNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 170)
  def _reduce_58(val, _values, result)
     result = val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
