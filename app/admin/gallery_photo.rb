ActiveAdmin.register GalleryPhoto do
  permit_params :picture

  index do
    selectable_column
    id_column
    column :picture
    actions
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.file_field :picture
    end
    f.actions
  end
end
