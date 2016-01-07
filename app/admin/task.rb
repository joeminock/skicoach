ActiveAdmin.register Task do
		permit_params :tag, :title, :description, :note, :video, :header, :project_id

	sortable tree: false,
			 sorting_attribute: :tag

	index :as => :sortable do
		label :title

		actions
	end

	index do
		selectable_column
		column :project
		column :title
		column :header
		column :tag
		

		actions
	end

end
