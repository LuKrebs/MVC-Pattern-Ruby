class View

  def show_all_tasks(tasks)
    puts "Here's your tasks :)"
    tasks.each_with_index do |task, index|
      puts "#{index + 1} ~> #{task.name}"
      puts "Status: #{task.status}"
      puts ""
    end
  end

  def add_some_task
    puts "Insert the task: "
    task = gets.chomp

    puts "Insert the status for this task "
    status = gets.chomp

    [task, status]
  end

  def delete_some_task
    puts "What task do you want to delete?"
    number = gets.chomp.to_i

    number - 1
  end

end
