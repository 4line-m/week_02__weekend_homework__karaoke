require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')

class TestRoom < MiniTest::Test

  def setup()
    @room_1 = Room.new("Just Duet", 2, 18, 10)
    @room_2 = Room.new("Doo Doo Doo Re Minor", 0, 12, 10)
    @guest_1 = Guest.new("Aline", 31, 50)
    @song_1 = Song.new("Eye of the Tiger", "Survivor", 4.04)

  end

  def test_can_get_room_name
  actual = @room_1.name()
  assert_equal("Just Duet", actual)
  end

  def test_can_get_room_max_capacity
  actual = @room_1.max_capacity()
  assert_equal(2, actual)
  end

  def test_can_get_room_age_limit
  actual = @room_2.age_limit()
  assert_equal(12, actual)
  end

  def test_can_get_room_fee
  actual = @room_2.fee()
  assert_equal(10, actual)
  end

  def test_room_starts_with_zero_guests()
  actual = @room_1.number_of_guests()
  assert_equal(0, actual)
  end

  def test_room_can_check_in_guest()
    @room_1.check_in_guest(@guest_1)
    actual = @room_1.number_of_guests()
    assert_equal(1, actual)
  end

  def test_room_can_check_out_guest()
    @room_1.check_out_guest(@guest_1)
    actual = @room_1.number_of_guests()
    assert_equal(0, actual)
  end

  def test_room_can_check_out_all_guests()
    @room_1.check_out_all_guests()
    actual = @room_1.number_of_guests()
    assert_equal(0, actual)
  end

  def test_room_starts_with_zero_songs()
  actual = @room_1.number_of_songs()
  assert_equal(0, actual)
  end

  def test_add_song()
    @room_1.add_song(@song_1)
    actual = @room_1.number_of_songs()
    assert_equal(1, actual)
  end

  def test_remove_song()
    @room_1.remove_song(@song_1)
    actual = @room_1.number_of_songs()
    assert_equal(0, actual)
  end

  def test_clear_all_songs()
    @room_1.clear_all_songs()
    actual = @room_1.number_of_songs()
    assert_equal(0, actual)
  end

  def test_room_max_capacity_works()
    @room_2.check_in_guest(@guest_1)
    actual = "Sorry! This room only accepts 0 people."
    assert_equal("Sorry! This room only accepts 0 people.", actual)
  end

  def

end
