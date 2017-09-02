ActiveAdmin.register Category do
permit_params :name
	show do |t|
		attributes_table do 
			row :name
		end
	end
end
