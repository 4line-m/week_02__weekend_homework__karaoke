class Guest

  attr_reader(:name, :age, :funds)

  def initialize(name, age, funds)
    @name = name
    @age = age
    @funds = funds
  end

end
