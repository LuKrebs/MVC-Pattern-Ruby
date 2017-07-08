class View

  def show_cars(cars)
    show_all(cars)
  end

  def delete_car(cars)
    show_all(cars)
    puts "Enter the car number do you want to delete?"
    deleted_car = gets.chomp.to_i

    deleted_car - 1
  end

  def add_car
    puts "What's the car's name do you want to add?"
    name_car = gets.chomp

    puts "What's the car's brand?"
    brand_car = gets.chomp

    puts "What's the price?"
    price_car = gets.chomp

    [name_car, brand_car, price_car]
  end

  private

  def show_all(cars)
    puts "Here is the cars :)"
    cars.each_with_index do |car, index|
      puts "#{index + 1}. #{car.name}, #{car.brand} ~> R$#{car.price}"
      puts ""
    end
  end
end
