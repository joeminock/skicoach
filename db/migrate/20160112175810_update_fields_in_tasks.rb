class UpdateFieldsInTasks < ActiveRecord::Migration
  def change
  	remove_column :tasks, :task_time, :integer
  end
end
