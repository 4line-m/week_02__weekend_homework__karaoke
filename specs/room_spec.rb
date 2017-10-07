require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class TestRoom < MiniTest::Test

  def setup()
    @room_1 = Room.new("Debauchery", 2, 18)
    @room_2 = Room.new("Cotton Candy", 10, 12)
  end

  def test_can_get_room_name
  actual = @room_1.name()
  assert_equal("Debauchery", actual)
  end

  def test_can_get_room_max_capacity
  actual = @room_1.max_capacity()
  assert_equal(2, actual)
  end

  def test_can_get_room_age_limit
  actual = @room_1.age_limit()
  assert_equal(18, actual)
  end

end
