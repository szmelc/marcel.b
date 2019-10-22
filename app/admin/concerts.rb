ActiveAdmin.register Concert do
  permit_params :city, :country, :details, :festival_name, :date, :name, :venue, :link

  index do
    selectable_column
    id_column
    column :name
    column :city
    column :date
    column :venue
    column :country
    actions
  end

  filter :date
  filter :city
  filter :venue

  form do |f|
    f.inputs do
      f.input :name
      f.input :city
      f.input :date
      f.input :country
      f.input :festival_name
      f.input :link
      f.input :venue
      f.input :details
    end
    f.actions
  end
end
