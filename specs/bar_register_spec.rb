require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_register.rb')

class TestBarRegister < MiniTest::Test

  def setup()
  @bar_register = BarRegister.new()
  end

  def test_can_get_bar_register_cash_total()
    result = @bar_register.cash()
    assert_equal(0, result)
  end
  
end
