ActiveAdmin.register News do
    permit_params :polish_content, :polish_title, :english_content, :english_title
  
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
        row :polish_content do |o|
          o.polish_content.body
        end
        row :english_content do |o|
          o.english_content.body
        end
      end
    end
  
    form do |f|
      f.inputs do
        f.input :polish_title
        f.input :english_title
        f.input :english_content, as: :quill_editor
        f.input :polish_content, as: :quill_editor
      end
      f.actions
    end
  end
  