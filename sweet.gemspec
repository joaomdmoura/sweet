Gem::Specification.new do |s|
  s.name        = 'sweet-lang'
  s.version     = '0.4.7'
  s.executables << 'sweet'
  s.date        = '2012-01-04'
  s.summary     = "A Sweet language, that compiles for HTML"
  s.description = "Sweet is a pre-compiled language based on Ruby and Python. 
    Sweet makes possible to use all the class, defs, conditionals, global and 
    local variables power of server-side languages, defining blocks by indentation 
    like Python in your Sweet HTML markup.
    It comes with a SIC ( Sweet Interactive Console ) the you can test your code and ideas
    before really right and compile it."
  s.authors     = ["João Moura"]
  s.email       = 'joaomdmoura@gmail.com'
  s.files       = ["lib/sweet.rb", "lib/interpreter.rb", "lib/lexer.rb", "lib/nodes.rb", "lib/parser.rb", "lib/runtime.rb", "lib/lexer/core.rb", "lib/lexer/strings.rb", "lib/lexer/tags.rb", "lib/runtime/bootstrap.rb", "lib/runtime/class.rb", "lib/runtime/context.rb", "lib/runtime/method.rb", "lib/runtime/object.rb", "lib/trollop.rb", "lib/filesystemwatcher.rb", "lib/servicestate.rb"]
  s.homepage    = 'http://joaomdmoura.github.com/sweet/'
end