ActiveAdmin.register Project do
	permit_params :name, :s_description, :l_description, :price, :image, :coming_soon

	show do |t|
		attributes_table do
			row :name
			row :s_description
			row :l_description
			row :coming_soon
			row :price
			row :image do
				project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "No photo yet")
			end
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do
			f.input :name
			f.input :s_description
			f.input :l_description
			f.input :coming_soon
			f.input :price	
			f.input :image, hint: f.project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
		end
		f.actions
	end
end