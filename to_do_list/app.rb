require_relative 'router'
require_relative 'to_do_list'
require_relative 'controller'

csv_path = 'tasks.csv'
to_do_list = ToDoList.new(csv_path)
controller = Controller.new(to_do_list)

router = Router.new(controller)

# Start the app
router.run
