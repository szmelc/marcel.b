ActiveAdmin.register Contact, as: 'Contact Details' do
  permit_params :email, :instagram

  index do
    selectable_column
    id_column
    column :email, :instagram
    actions
  end

  form do |f|
    f.inputs do
      f.input :email
      f.input :instagram
    end
    f.actions
  end
end
