#!/usr/bin/env ruby

require "interpreter"
require "readline"
require "trollop"
require "filesystemwatcher"

class Sweet
    
  def parsing_options

    opts = Trollop::options do
      version "Sweet 0.4.7 (c) 2012 Joao Moura a.k.a D3TR1"
      banner <<-EOS
      A Sweet Language, that compiles for HTML.

      Usage:
           sweet [options] <filename> or <path>

      Examples:
           sweet -c example.s
           sweet -w ./
           sweet -o

      Options:
      EOS

      opt :compile, "Compile a single file", :type => :string
      opt :watch, "Watch a directory", :type => :string
      opt :console, "Open SIC ( Sweet Interactive Console )"
    end
    Trollop::die :compile, "the file must exist" unless File.exist?(opts[:compile]) if opts[:compile]
    return opts

  end

  def sic

    puts "Sweet Interactive Console, CTRL+C to quit"
    loop do
      line = Readline::readline(">> ")
      Readline::HISTORY.push(line)
      value = interpreter.eval(line)
      puts "=> #{value.ruby_value.inspect}"
    end

  end

end

def compile_file(file)
  $path = file.split(/[ =-_a-zA-Z0-9]+\.s/)[0]
  interpreter = Interpreter.new
  @filename = file.split(".")[0]
  File.new("#{@filename}.html", "w")
  interpreter.eval File.read(file)
  File.open("#{@filename}.html", 'a') do |f|
    f.puts @code.join("\n")
  end
  puts "Sweet code compiled!"

end

sweet = Sweet.new
opts = sweet.parsing_options


# Compile a single file
if opts[:compile]
  compile_file(opts[:compile])
  
# Start watching a folder
elsif opts[:watch]
  puts "Starting to watch Sweet file(s)"
  watcher = FileSystemWatcher.new()
  watcher.addDirectory("#{opts[:watch]}", "*.s")
  watcher.sleepTime = 0.1
  watcher.start { |status,file|
      if status == FileSystemWatcher::CREATED
          puts "created: #{file}"
          compile_file(file)
         
      elsif status == FileSystemWatcher::MODIFIED
          puts "modified: #{file}"
          compile_file(file)
         
      elsif status == FileSystemWatcher::DELETED
          puts "deleted: #{file}"
      end
  }
  watcher.join()
  
# Start the REPL, read-eval-print-loop, or interactive interpreter
elsif opts[:console]
  sweet.sic
end