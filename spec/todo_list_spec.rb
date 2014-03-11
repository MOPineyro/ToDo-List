require "rspec"
require "todo_list"

describe Task do
 it "is initialized with description" do
  test_task = Task.new("Scrub my feet")
  test_task.should be_an_instance_of Task
  test_task.description.should eq "Scrub my feet"
 end

 it "allows user to set task priority" do
  test_task = Task.new("Scrub my feet")
  test_task.set_priority(4)
  test_task.get_priority.should eq 4
  test_task.description.should eq "Scrub my feet"
 end

 it "allows user to set task priority" do
  test_task = Task.new("Scrub my feet")
  test_task.set_priority(4)
  test_task.get_priority.should eq 4
  test_task.description.should eq "Scrub my feet"
 end

 it "allows user to set task due date" do
  test_task = Task.new("Scrub my feet")
  test_task.set_due_date(04,12,2015)
  test_task.get_due_date.should eq "2015-04-12"
 end
end

describe List do
 it "creates a list as an instance of List object" do
  test_task = Task.new("Scrub my feet")
  test_list = List.new("Things to do")
  test_task.should be_an_instance_of Task
  test_list.should be_an_instance_of List
 end

 it "initializes a List object and adds task" do
  test_task = Task.new("Scrub my feet")
  test_list = List.new("Things to do")
  test_list.add_to_list(test_task)
  test_list.tasks.length.should eq 1
 end

 it "allows user to remove task from specified list" do
  test_task = Task.new("Scrub my feet")
  test_list = List.new("Things to do")
  test_list.add_to_list(test_task)
  test_list.remove_from_list(test_task)
  test_list.tasks.length.should eq 0
  test_list.removed.length.should eq 1
 end

 it "allows user to mark task as complete" do
  test_task = Task.new("Scrub my feet")
  test_list = List.new("Things to do")
  test_list.add_to_list(test_task)
  test_list.mark_complete(test_task)
  test_list.tasks.length.should eq 0
  test_list.done.length.should eq 1
 end

 it "sorts task list by priority" do
  test_task1 = Task.new("Hop Up Out of Bed")
  test_task2 = Task.new("Turn My Swag On")
  test_task3 = Task.new("Take a Look In the Mirror")
  test_task4 = Task.new("Say Wassup")
  test_list = List.new("Things to do")
  test_task1.set_priority(4)
  test_task2.set_priority(3)
  test_task3.set_priority(2)
  test_task4.set_priority(1)
  test_list.add_to_list(test_task1)
  test_list.add_to_list(test_task2)
  test_list.add_to_list(test_task3)
  test_list.add_to_list(test_task4)
  test_list.task_sort("priority")[0].description.should eq "Hop Up Out of Bed"
 end

 # it "sorts task list by date" do
 #  test_task1 = Task.new("Hop Up Out of Bed")
 #  test_task2 = Task.new("Turn My Swag On")
 #  test_task3 = Task.new("Take a Look In the Mirror")
 #  test_task4 = Task.new("Say Wassup")
 #  test_list = List.new("Things to do")
 #  test_task1.set_priority(4)
 #  test_task2.set_priority(3)
 #  test_task3.set_priority(2)
 #  test_task4.set_priority(1)
 #  test_list.add_to_list(test_task1)
 #  test_list.add_to_list(test_task2)
 #  test_list.add_to_list(test_task3)
 #  test_list.add_to_list(test_task4)
 #  test_list.priority_sort[0].description.should eq "Hop Up Out of Bed"
 # end

end
