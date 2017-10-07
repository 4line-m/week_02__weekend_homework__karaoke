require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class TestRoom < MiniTest::Test

  def setup()
    @room_1 = Room.new("Debauchery", 2, 18)
    @room_2 = Room.new("Cotton Candy", 10, 12)
    @guest_1 = Guest.new("Aline", 31)
    @guest_2 = Guest.new("Patrick", 37)
    @guest_3 = Guest.new("Jasper", 17)
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

  def test_room_starts_with_zero_guests()
  actual = @room_1.number_of_guests()
  assert_equal(0, actual)
  end


end
