require File.dirname(__FILE__) + '/test_helper.rb'

class TestTerminalDispayColors < Test::Unit::TestCase

  include TerminalDispayColors

  def setup
  end
  
  def test_normal
    assert_equal( "\e[30mtesting some gray text\e[00m", 'testing some gray text'.gray )
    assert_equal( "\e[31mtesting some red text\e[00m", 'testing some red text'.red )
    assert_equal( "\e[32mtesting some green text\e[00m", 'testing some green text'.green )
    assert_equal( "\e[33mtesting some yellow text\e[00m", 'testing some yellow text'.yellow )
    assert_equal( "\e[34mtesting some blue text\e[00m", 'testing some blue text'.blue )
    assert_equal( "\e[35mtesting some purple text\e[00m", 'testing some purple text'.purple )
    assert_equal( "\e[36mtesting some cyan text\e[00m", 'testing some cyan text'.cyan )
    assert_equal( "\e[37mtesting some white text\e[00m", 'testing some white text'.white )
  end
  
  def test_bold
    assert_equal( "\e[01m\e[30mtesting some gray text\e[00m\e[00m", 'testing some gray text'.gray.bold )
    assert_equal( "\e[01m\e[31mtesting some red text\e[00m\e[00m", 'testing some red text'.red.bold )
    assert_equal( "\e[01m\e[32mtesting some green text\e[00m\e[00m", 'testing some green text'.green.bold )
    assert_equal( "\e[01m\e[33mtesting some yellow text\e[00m\e[00m", 'testing some yellow text'.yellow.bold )
    assert_equal( "\e[01m\e[34mtesting some blue text\e[00m\e[00m", 'testing some blue text'.blue.bold )
    assert_equal( "\e[01m\e[35mtesting some purple text\e[00m\e[00m", 'testing some purple text'.purple.bold )
    assert_equal( "\e[01m\e[36mtesting some cyan text\e[00m\e[00m", 'testing some cyan text'.cyan.bold )
    assert_equal( "\e[01m\e[37mtesting some white text\e[00m\e[00m", 'testing some white text'.white.bold )
    
    assert_equal( "\e[30m\e[01mtesting some gray text\e[00m\e[00m", 'testing some gray text'.bold.gray )
    assert_equal( "\e[31m\e[01mtesting some red text\e[00m\e[00m", 'testing some red text'.bold.red )
    assert_equal( "\e[32m\e[01mtesting some green text\e[00m\e[00m", 'testing some green text'.bold.green )
    assert_equal( "\e[33m\e[01mtesting some yellow text\e[00m\e[00m", 'testing some yellow text'.bold.yellow )
    assert_equal( "\e[34m\e[01mtesting some blue text\e[00m\e[00m", 'testing some blue text'.bold.blue )
    assert_equal( "\e[35m\e[01mtesting some purple text\e[00m\e[00m", 'testing some purple text'.bold.purple )
    assert_equal( "\e[36m\e[01mtesting some cyan text\e[00m\e[00m", 'testing some cyan text'.bold.cyan )
    assert_equal( "\e[37m\e[01mtesting some white text\e[00m\e[00m", 'testing some white text'.bold.white )
  end
end
