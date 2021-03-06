require "active_record"

class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def self.overdue
    where("due_date<?", Date.today)
  end

  def self.due_today
    where("due_date=?", Date.today)
  end

  def self.due_later
    where("due_date>?", Date.today)
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{display_status} #{todo_text} #{display_date}"
  end

  def self.show_list
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    overdue_list = overdue.map { |todo| "#{todo.id}. ".concat(todo.to_displayable_string) }
    puts overdue_list.join("\n")
    puts "\n\n"

    puts "Due Today\n"
    duetoday_list = due_today.map { |todo| "#{todo.id}. ".concat(todo.to_displayable_string) }
    puts duetoday_list.join("\n")
    puts "\n\n"

    puts "Due Later\n"
    duelater_list = due_later.map { |todo| "#{todo.id}. ".concat(todo.to_displayable_string) }
    puts duelater_list.join("\n")
    puts "\n\n"
  end

  def self.add_task(h)
    Todo.create!(todo_text: h[:todo_text], due_date: Date.today + h[:due_in_days], completed: false)
    Todo.last
  end

  def self.mark_as_complete!(todo_id)
    todoById = Todo.find(todo_id)
    todoById.completed = true
    todoById.save
    todoById
  end
end
