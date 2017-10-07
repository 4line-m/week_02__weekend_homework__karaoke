require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Aline", 31)
    @guest_2 = Guest.new("Patrick", 37)
    @guest_3 = Guest.new("Jasper", 17)
  end

  def test_can_get_guest_name
  actual = @guest_1.name()
  assert_equal("Aline", actual)
  end

  def test_can_get_guest_age
  actual = @guest_2.age()
  assert_equal(37, actual)
  end

end
