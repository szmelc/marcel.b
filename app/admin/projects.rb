ActiveAdmin.register Project do
  permit_params :name, :description, :english_description, { photos: [] }, :order

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  show do |project|
    attributes_table do
      row :name
      row :description
      row :english_description
      row "Images" do
        ul do
         project.photos.each do |photo|
           li do
             image_tag(photo.url(:small))
           end
         end
       end
     end
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :english_description
      f.input :order
      f.file_field :photos, multiple: true
    end
    f.actions
  end
end
