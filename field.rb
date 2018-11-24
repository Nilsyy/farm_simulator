require_relative "farm"
class Fields < Farms

  def initialize(food, hectare)
  @food = food
  @hectare = hectare
  end

  def food
    @food
  end

  def hectare
    @hectare
  end

  def produce
    if self.food == "carrot"
      return @hectare * 1000
    elsif self.food == "potato"
      return @hectare * 500
    elsif self.food == "broccoli"
      return @hectare * 100
    else
      return puts "We don't have this produce, get off our property!"
    end
  end

end

farm1 = Farms.new("Daniel's Farm")
farm1.main_menu
carrot = Fields.new("carrot", 100)
potato = Fields.new("potato", 100)
broccoli = Fields.new("broccoli", 100)

farm1.add(carrot)
farm1.add(potato)
farm1.add(broccoli)

puts farm1.harvest
puts farm1.harvest
