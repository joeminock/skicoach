class AddFieldsToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :task_time, :string
  end
end
