ActiveAdmin.register News do
  permit_params :polish_content, :polish_title, :english_content,
                :english_title, :locale

  index do
    selectable_column
    id_column
    column :polish_title
    column :english_title
    actions
  end

  show do |project|
    attributes_table do
      row :polish_title
      row :english_title
      row :polish_content
      row :english_content
    end
  end

  form do |f|
    f.inputs do
      f.input :polish_title
      f.input :english_title
      f.rich_text_area :polish_content, label: 'English Content'
      f.rich_text_area :english_content, label: 'Polish Content'
    end
    f.actions
  end
end
