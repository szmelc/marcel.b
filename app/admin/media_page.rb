ActiveAdmin.register MediaPage do
  permit_params :content

  index do
    selectable_column
    actions
  end

  form do |f|
    f.inputs do
      f.input :content, as: :ckeditor, label: false
    end

    f.actions
  end
end
