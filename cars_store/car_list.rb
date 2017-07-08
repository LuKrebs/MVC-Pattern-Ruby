require 'csv'
require_relative 'car'

class CarList

  def initialize(csv_path)
    @csv_path = csv_path
    @cars = []
    CSV.foreach(@csv_path) do |row|
      @cars << Car.new(row[0], row[1], row[2])
    end
  end

  def add_car(car)
    @cars << car
    save_change
  end

  def delete_car(index_number)
    @cars.delete_at(index_number)
    save_change
  end

  def all
    @cars
  end

  def save_change
    CSV.open(@csv_path, 'wb') do |csv|
      @cars.each do |car|
        csv << [car.name, car.brand, car.price]
      end
    end
  end
end
