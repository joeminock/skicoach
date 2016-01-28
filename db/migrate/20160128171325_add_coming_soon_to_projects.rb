class AddComingSoonToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :coming_soon, :boolean
  end
end
