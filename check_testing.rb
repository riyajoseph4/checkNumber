require "minitest/autorun"

require "minitest/pride"
require_relative "num_check"

class CallTest < Minitest::Test
  
  def setup 
    @num1 = NumCheck.new.call_898989898989
    @num2 = NumCheck.new.call_04844011845
    @num3 = NumCheck.new.call_8547810845
    @num4 = NumCheck.new.call_12321
    @num5 = NumCheck.new.call_8547810845_call 
    @num6 = NumCheck.new.call_call_8547810845

  end

  def test_call_898989898989
    assert_equal "invalid number",@num1
  end

  def test_call_04844011845
    assert_equal "valid number",@num2
  end

  def test_call_8547810845
    assert_equal "valid number",@num3
  end

  def test_call_12321
    assert_equal "invalid number",@num4
  end

  def test_call_8547810845_call  
    assert_equal "invalid number", @num5
  end 

  def test_call_call_8547810845  
    assert_equal "invalid number", @num6
  end

end
     




