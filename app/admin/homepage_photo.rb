ActiveAdmin.register HomepagePhoto do
  permit_params :picture, :active

  index do
    selectable_column
    id_column
    column :picture
    column :active
    actions
  end

  form do |f|
    f.inputs do
      f.input :active
      f.file_field :picture
    end
    f.actions
  end
end
