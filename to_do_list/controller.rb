require_relative 'view'

class Controller

  def initialize(to_do_list)
    @to_do_list = to_do_list
    @view = View.new
  end

  def destroy_task
    task_number = @view.delete_some_task
    @to_do_list.delete_task(task_number)
  end

  def add_item
    task = @view.add_some_task
    new_task = Task.new(task[0], task[1])
    @to_do_list.add_task(new_task)
  end

  def show_all
    tasks = @to_do_list.all
    @view.show_all_tasks(tasks)
  end

end
