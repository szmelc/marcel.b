ActiveAdmin.register Project do
  permit_params :name, :description, :english_description, :order

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
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :english_description
      f.input :order
    end
    f.actions
  end
end
