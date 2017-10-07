require_relative('guest.rb')

class Room

  attr_reader(:name, :max_capacity, :age_limit)

  def initialize(name, max_capacity, age_limit)
    @name = name
    @max_capacity = max_capacity
    @age_limit = age_limit
    @guests = []
  end

  def number_of_guests
    return @guests.length()
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

end
