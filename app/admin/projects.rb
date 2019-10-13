ActiveAdmin.register Project do
  permit_params :name, :description, { photos: [] }

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :date
  filter :city
  filter :venue

  show do |project|
    attributes_table do
      row :name
      row :description
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
      f.file_field :photos, multiple: true
    end
    f.actions
  end
end
