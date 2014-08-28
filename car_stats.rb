class CarStats
  
  def self.calc_top_color(cars)

    colors = get_car_color_array(cars)
    possible_colors = colors.uniq

    max = 0
    index = 0
    possible_colors.each do |x|
        amt = colors.count(x)
        if amt > max
          max = amt 
          index = possible_colors.find_index(x)
        end
    end

    possible_colors[index]

  end

  def self.calc_bottom_color(cars)

    colors = get_car_color_array(cars)
    possible_colors = colors.uniq

    min = 99999999999
    index = 0
    possible_colors.each do |x|
        amt = colors.count(x)
        if amt < min
          min = amt 
          index = possible_colors.find_index(x)
        end
    end

    possible_colors[index]

  end

  # helper method
  def self.get_car_color_array(cars)
    
    colors = []

    cars.each do |car|
      colors << car.color
    end

    colors
  end

end
