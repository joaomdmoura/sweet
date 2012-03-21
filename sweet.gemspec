Gem::Specification.new do |s|
  s.name        = 'sweet-lang'
  s.version     = '0.6.6'
  s.executables << 'sweet'
  s.date        = '2012-01-11'
  s.summary     = "A Sweet language, that compiles for HTML"
  s.description = "Sweet is a pre-compiled language based on Ruby and Python. 
    Sweet makes possible to use all the class, defs, conditionals, global and 
    local variables power of server-side languages, defining blocks by indentation 
    like Python in your Sweet HTML markup.
    It comes with a SIC ( Sweet Interactive Console ) the you can test your code and ideas
    before really right and compile it."
  s.authors     = ["João Moura"]
  s.email       = 'joaomdmoura@gmail.com'
  s.files       = Dir[ 'lib/*', 'lib/**/*', 'init.rb', 'bin/sweet' ]
  s.homepage    = 'http://joaomdmoura.github.com/sweet/'
end