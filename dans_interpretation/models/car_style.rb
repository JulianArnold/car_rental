class CarStyle
  attr_reader :name, :price_per_day, :id

  def initialize(name, price_per_day, id)
    @name = name
    @price_per_day = price_per_day
    @id = id
  end
end
