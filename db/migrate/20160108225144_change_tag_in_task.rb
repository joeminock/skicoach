class ChangeTagInTask < ActiveRecord::Migration
  def change
  	change_column :tasks, :tag, :integer, 'integer USING CAST(column_name AS integer)'
  end
end
