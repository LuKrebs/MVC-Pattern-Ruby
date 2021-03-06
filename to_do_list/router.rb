class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "Welcome to the To Do List Manager :)"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.show_all
    when 2 then @controller.add_item
    when 3 then @controller.destroy_task
    when 4 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all tasks"
    puts "2 - Create a task"
    puts "3 - Destroy a task"
    puts "4 - Stop and exit the program"
  end
end
