class AddTypeOfTaskToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :type_of_task, :string
  end
end
