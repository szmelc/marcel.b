ActiveAdmin.register Project do
  permit_params :name, :description, :english_description, :order, :fb_link, :spotify_link, :youtube_link, :instagram_link

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
      row :fb_link
      row :spotify_link
      row :instagram_link
      row :youtube_link
      row :order
    end
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :english_description
      f.input :fb_link
      f.input :spotify_link
      f.input :instagram_link
      f.input :youtube_link
      f.input :order
    end
    f.actions
  end
end
