require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup
   @song_1 = Song.new("Eye of the Tiger", "Survivor", 4.04)
   @song_2 = Song.new("Song 2", "Blur", 2.02)
   @song_3 = Song.new("You Shook Me All Night Long", "AC/DC", 3.32)
  end

  def test_song_title
    actual = @song_1.title()
    assert_equal("Eye of the Tiger", actual)
  end

  def test_artist_name
    actual = @song_2.artist()
    assert_equal("Blur", actual)
  end

  def test_song_length
    actual = @song_3.length()
    assert_equal(3.32, actual)
  end

end
