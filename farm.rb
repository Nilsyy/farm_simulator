class Farms

  def initialize(name)
    @name = name
    @farm_fields = []
    @total_harvest = 0
  end

  def add(field)
    @farm_fields << field
    puts "Added to farm!"
  end

  def farm_fields
    @farm_fields
  end

  def harvest
  @farm_fields.each do |field|

    @total_harvest += field.produce
  end

  return @total_harvest
  end

  def status
    puts "The farm has #{self.total_harvest} harvested food so far"
  end

  def main_menu
    while true
    list_items
    user_input = gets.chomp.to_i
    call_option(user_input)
  end
  end


  def list_items
    puts "(1) field -> add a new field."
    puts "(2) harvest -> harvests crops and adds to total harvest."
    puts "(3) status -> displays some information about the farm."
    puts "(4) relax -> or do you really want to? -_-"
    puts "(5) exit -> exists the progarm."
  end

  def call_option(user_input)
    case user_input
    when 1 then add_to_field
    when 2 then harvest_everything
    when 3 then farm_status
    when 4 then enjoy_the_beauty
    when 5 then exit
    end
  end

  def add_to_field
    puts "What kind of field is it: carrot, potato, or broccoli?"
    crop = gets.chomp
    puts "How large is the field in hectare?"
    field = gets.chomp.to_i
    puts "Added a #{crop} field of #{field}"
    new_field = Fields.new(crop, field)
    self.add(new_field)
  end

  def harvest_everything
    @farm_fields.each do |field|

      puts "Harvesting #{field.produce} food from #{field.hectare} #{field.food}"
    end
    puts "The farm has #{harvest} food so far"
  end

  def farm_status
    @farm_fields.each do |field|
      puts "#{field.food} field is #{field.hectare} hectares."
    end
  end

  def enjoy_the_beauty()
    @farm_fields.each do |field|
      if field.food == "carrot"
        puts "#{field.hectare} hectares of beautiful #{field.food} fields. Time to boast your eye vision!"
      elsif field.food == "potato"
        puts "#{field.hectare} hectares of beautiful #{field.food} fields. Would you like fries with that?"
      elsif field.food == "broccoli"
        puts "Wow this #{field.food} is beautiful! The ultimate green superfood for superhumans!"
      end
    end

end
end
