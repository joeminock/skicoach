ActiveAdmin.register Project do
	permit_params :name, :s_description, :l_description, :price	
end
