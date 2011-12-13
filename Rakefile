# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "sweet"
  gem.homepage = "http://github.com/joaomdmoura/sweet"
  gem.license = "MIT"
  gem.summary = %Q{A Sweet language, that compiles for HTML}
  gem.description = %Q{Sweet is a pre-compiled language based on Ruby and Python. 
    Sweet makes possible to use all the class, defs, conditionals, global and 
    local variables power of server-side languages, defining blocks by indentation 
    like Python in your Sweet HTML markup.
    It comes with a SIC ( Sweet Interactive Console ) the you can test your code and ideas
    before really right and compile it.}
  gem.email = "joaomdmoura@gmail.com"
  gem.authors = ["João Moura"]
  # gem.add_dependency 'ffi', '0.3.5'
  # gem.add_dependency 'tidy_ffi'
  gem.executables = ['sweet']
  gem.files.include 'lib/*'
  gem.files.include 'lib/**/*'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "sweet #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
