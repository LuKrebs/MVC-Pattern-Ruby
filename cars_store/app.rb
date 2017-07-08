require_relative 'controller'
require_relative 'car_list'
require_relative 'router'

csv_path = 'cars.csv'
car_list = CarList.new(csv_path)
controller = Controller.new(car_list)

router = Router.new(controller)

router.run
