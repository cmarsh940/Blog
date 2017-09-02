ActiveAdmin.register Post do
	permit_params :title, :category_id, :overview, :content, :image

	show do |t|
		attributes_table do 
			row :title
			row :category
			row :overview
			row :content
			row :image do 
				post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "No photo yet")
			end
		end
	end

	form :html => { :enctype => "multipart/form-data" } do |f|
		f.inputs do 
			f.input :title
			f.input :category
			f.input :overview
			f.input :content
			f.input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "upload JPG/PNG/GIF image")
		end
		f.actions 
	end
end
