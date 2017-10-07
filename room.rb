class Room

  attr_reader(:name, :max_capacity, :age_limit)

  def initialize(name, max_capacity, age_limit)
    @name = name
    @max_capacity = max_capacity
    @age_limit = age_limit
  end

end
