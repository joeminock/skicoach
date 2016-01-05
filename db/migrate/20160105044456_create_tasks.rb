class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.text :note
      t.string :video
      t.boolean :header, :null => false, :default => false
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
