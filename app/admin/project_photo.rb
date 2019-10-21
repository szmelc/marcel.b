ActiveAdmin.register ProjectPhoto do
  permit_params :picture, :project_id

  index do
    selectable_column
    id_column
    column :picture
    actions
  end

  form(html: { multipart: true }) do |f|
    f.file_field :picture
    f.input :project
    f.actions
  end
end
