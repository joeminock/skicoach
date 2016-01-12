class ChangeTaskTimeInTasks < ActiveRecord::Migration
  def change
  	change_column :tasks, :task_time, :time 
  end
end
