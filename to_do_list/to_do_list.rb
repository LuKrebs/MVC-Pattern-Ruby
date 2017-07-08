require 'pry-byebug'
require_relative './task.rb'
require 'csv'

class ToDoList

  def initialize(csv_path)
    @tasks = []
    @csv_path = csv_path
    CSV.foreach(@csv_path) do |row|
      @tasks << Task.new(row[0], row[1])
    end
  end

  def add_task(task)
    @tasks << task
    save_change
  end

  def delete_task(index_number)
    @tasks.delete_at(index_number)
    save_change
  end

  def all
    @tasks
  end

  def save_change
    CSV.open(@csv_path, "wb") do |csv|
      @tasks.each do |task|
        csv << [task.name, task.status]
      end
    end
  end
end
