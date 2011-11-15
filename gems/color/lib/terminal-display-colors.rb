$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module TerminalDispayColors
  VERSION = '0.0.2'

  colors = {
    'gray'   => "\033[30m",
    'red'    => "\033[31m",
    'green'  => "\033[32m",
    'yellow' => "\033[33m",
    'blue'   => "\033[34m",
    'purple' => "\033[35m",
    'cyan'   => "\033[36m",
    'white'  => "\033[37m",
    'bold'   => "\033[01m"
  }
  ending  = "\033[00m"

  colors.keys.each do | color |
    color_block = lambda { | *args |
      colors[ color ] + self + ending
    }
    String.send( :define_method, color.to_sym, color_block )
  end
end
