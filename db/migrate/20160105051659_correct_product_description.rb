class CorrectProductDescription < ActiveRecord::Migration
  def change
    add_column :projects, :l_description, :text
    remove_column :projects, :l_desctiption, :text
  end
end
