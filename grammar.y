class Parser

# Declare tokens produced by the lexer
token IF ELSE
token WHILE
token DEF
token CLASS
token NEWLINE
token NUMBER
token STRING
token TRUE FALSE NIL
token IDENTIFIER
token CONSTANT
token INDENT DEDENT

expect 10

rule  
  # All parsing will end in this rule, being the trunk of the AST.
  Root:
    /* nothing */                      { result = Nodes.new([]) }
  | Expressions                        { result = val[0] }
  ;
  
  # Any list of expressions, class or method body, seperated by line breaks.
  Expressions:
    Expression                         { result = Nodes.new(val) }
  | Expressions Terminator Expression  { result = val[0] << val[2] }
    # To ignore trailing line breaks
  | Expressions Terminator             { result = Nodes.new([val[0]]) }
  ;

  # All types of expressions in sweet
  Expression:
    Literal
  | Call
  | Constant
  | Assign
  | Def
  | Class
  | If
  | While
  ;
  
  # All tokens that can terminate an expression
  Terminator:
    NEWLINE
  | ";"
  ;
  
  # All hard-coded values
  Literal:
    NUMBER                        { result = LiteralNode.new(val[0]) }
  | STRING                        { result = LiteralNode.new(val[0]) }
  | TRUE                          { result = LiteralNode.new(true) }
  | FALSE                         { result = LiteralNode.new(false) }
  | NIL                           { result = LiteralNode.new(nil) }
  ;

  # A method call
  Call:
    # method
    IDENTIFIER                    { result = CallNode.new(nil, val[0]) }
    # method(arguments)
  | IDENTIFIER "(" ArgList ")"    { result = CallNode.new(nil, val[0], val[2]) }
    # receiver.method
  | Expression "." IDENTIFIER     { result = CallNode.new(val[0], val[2]) }
    # receiver.method(arguments)
  | Expression "."
      IDENTIFIER "(" ArgList ")"  { result = CallNode.new(val[0], val[2], val[4]) }
  ;
  
  ArgList:
    /* nothing */                 { result = [] }
  | Expression                    { result = val }
  | ArgList "," Expression        { result = val[0] << val[2] }
  ;
  
  Constant:
    CONSTANT                      { result = GetConstantNode.new(val[0]) }
  ;
  
  # Assignation to a variable or contant
  Assign:
    IDENTIFIER "=" Expression     { result = SetLocalNode.new(val[0], val[2]) }
  | CONSTANT "=" Expression       { result = SetConstantNode.new(val[0], val[2]) }
  ;
  
  # Method definition
  Def:
    DEF IDENTIFIER Block          { result = DefNode.new(val[1], [], val[2]) }
  | DEF IDENTIFIER
      "(" ParamList ")" Block     { result = DefNode.new(val[1], val[3], val[5]) }
  ;

  ParamList:
    /* nothing */                 { result = [] }
  | IDENTIFIER                    { result = val }
  | ParamList "," IDENTIFIER      { result = val[0] << val[2] }
  ;
  
  # Class definition
  Class:
    CLASS CONSTANT Block          { result = ClassNode.new(val[1], val[2]) }
  ;
  
  While:
    WHILE Expression Block { result = WhileNode.new(val[1], val[2]) }
  ;

  # if and if-else block
  If:
    IF Expression Block           { result = IfNode.new(val[1], val[2]) }
  | IF Expression Block NEWLINE
    ELSE Block                    { result = IfNode.new(val[1], val[2], val[5]) }
  ;

  BinaryOperator:
    "+"
  |"-"
  ;

  Call:
    Expression BinaryOperator Expression { result = CallNode.new(val[0], val[1], [val[2]]) }
  ;
  
  
  # A block of indented code.
  Block:
    INDENT Expressions DEDENT     { result = val[1] }
  ;
end

---- header
  require "lexer"
  require "nodes"

---- inner
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end
  
  def next_token
    @tokens.shift
  end