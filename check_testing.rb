require "minitest/autorun"

require "minitest/pride"
require_relative "pgm"

class CallTest < Minitest::Test
  
  def setup 
    @num1 = CallCheck.new("99887654356786")
    @num2 = CallCheck.new("04844011845")
    @num3 = CallCheck.new("8547810845")
    @num4 = CallCheck.new("12321")
    @num5 = CallCheck.new("9495969234")
  end

  def test_call_99887654356786
    assert_equal "invalid number", @num1.call 
  end

  def test_call_04844011845
    assert_equal "valid number", @num2.call
  end

  def test_call_8547810845
    assert_equal "valid number", @num3.call
  end

  def test_call_12321
    assert_equal "invalid number", @num4.call
  end
  def test_call_9495969234
    assert_equal "valid number", @num5.call
  end

end