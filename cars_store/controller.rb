require_relative 'view'

class Controller

  def initialize(cars)
    @cars = cars
    @view = View.new
  end

  def add_car
    car_to_add = @view.add_car
    new_car = Car.new(car_to_add[0], car_to_add[1], car_to_add[2])
    @cars.add_car(new_car)
  end

  def delete_car
    all_cars = @cars.all
    car_to_delete = @view.delete_car(all_cars)
    @cars.delete_car(car_to_delete)
  end

  def show_all_cars
    all_cars = @cars.all
    @view.show_cars(all_cars)
  end
end
