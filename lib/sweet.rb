#!/usr/bin/env ruby
# The Sweet language!
# 
# usage:
#   ./sweet example.awm # to eval a file
#   ./sweet             # to start the REPL
#
# on Windows run with: ruby sweet [options]

$:.unshift "." # Fix for Ruby 1.9
require "interpreter"
require "readline"
require "tidy_ffi"

interpreter = Interpreter.new

# If a file is given we eval it.
if file = ARGV.first
  @filename = ARGV.first.split(".")[0]
  File.new("#{@filename}.html", "w")
  interpreter.eval File.read(file)
  File.open("#{@filename}.html", 'a') do |f|
    f.puts TidyFFI::Tidy.with_options(:show_body_only => true, :indent => 1).new(@code.join("\n")).clean
  end
  puts "Sweet code compiled!"

# Start the REPL, read-eval-print-loop, or interactive interpreter
else
  puts "Sweet Interactive Console, CTRL+C to quit"
  loop do
    line = Readline::readline(">> ")
    Readline::HISTORY.push(line)
    value = interpreter.eval(line)
    puts "=> #{value.ruby_value.inspect}"
  end
  
end