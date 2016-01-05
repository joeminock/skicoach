class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :s_description
      t.text :l_desctiption
      t.integer :price

      t.timestamps null: false
    end
  end
end
