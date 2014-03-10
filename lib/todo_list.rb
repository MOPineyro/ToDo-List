class Task
  def initialize(description)
    @description = description
    @priorty = 0
  end

  def description
    @description
  end

  def due_date(date)
    @date
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

end

# test_task = Task.new("Scrub my feet")
#   test_list = List.new("Things to do")
#   test_list.add_to_list(test_task)
#   test_list.remove_from_list(test_task)
#   puts test_list.removed[0].description

