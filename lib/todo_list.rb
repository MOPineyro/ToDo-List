## To Do:
# Fix date property
# Set sort by date and name
# Give users the option to edit a task's description
# Add input interface



class Task
  def initialize(description)
    @description = description
    @priority = 0
  end

  def description
    @description
  end

  def set_due_date(month,day,year)
    @month = month
    @day = day
    @year = year
    @due_date = Date.new(@year,@month,@day)
  end

  def get_due_date
    @due_date
  end

  def set_priority(priority)
    if @priority.to_i > 5
      puts "INVALID!"
    else
      @priority
    end
    @priority = priority
  end

  def get_priority
    @priority
  end

end


class List
  def initialize(list_name)
    @list_name = list_name
    @tasks = []
    @done = []
    @removed = []
  end

  def add_to_list(task_to_add)
    @tasks << task_to_add
  end

  def remove_from_list(task_to_remove)
    @removed << task_to_remove
    tasks.delete(task_to_remove)
  end

  def removed
    @removed
  end

  def mark_complete(task_to_mark)
    @done << task_to_mark
    tasks.delete(task_to_mark)
  end

  def done
    @done
  end

  def tasks
    @tasks
  end

  def task_sort(type)
    if type == "priority"
      sorted_list = @tasks.sort_by { |task| task.get_priority }.reverse
    elsif type == "date"
      sorted_list = @tasks.sort_by { |task| task.get_due_date }.reverse
    elsif type == "name"
      sorted_list = @tasks.sort_by { |task| task.description }.reverse
    end
    sorted_list
  end

end

# test_task = Task.new("Scrub my feet")
#   test_list = List.new("Things to do")
#   test_list.add_to_list(test_task)
#   test_list.remove_from_list(test_task)
#   puts test_list.removed[0].description

