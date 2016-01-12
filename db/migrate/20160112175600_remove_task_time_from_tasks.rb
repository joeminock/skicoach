class RemoveTaskTimeFromTasks < ActiveRecord::Migration
  def change
  	change_column :tasks, :task_time, :integer
  end
end
