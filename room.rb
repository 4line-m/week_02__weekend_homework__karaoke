require_relative('guest.rb')
require_relative('song.rb')

class Room

  attr_reader(:name, :max_capacity, :age_limit)

  def initialize(name, max_capacity, age_limit)
    @name = name
    @max_capacity = max_capacity
    @age_limit = age_limit
    @guests = []
    @songs =[]
  end

  def number_of_guests
    return @guests.length()
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def check_out_all_guests()
    return @guests.clear()
  end

  def number_of_songs
    return @songs.length()
  end

  def add_song(song)
    @songs.push(song)
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def clear_all_songs()
    @songs.clear()
  end

end
