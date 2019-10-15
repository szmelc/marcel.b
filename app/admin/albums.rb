ActiveAdmin.register Album do
  permit_params :buy_cd_link, :cover, :description, :name, :project_id,
                :stream_link, :year

  index do
    selectable_column
    id_column
    column :name
    column :year
    column :project
    actions
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :buy_cd_link
      f.input :stream_link
      f.input :year
      f.input :project
      f.file_field :cover, label: "Album Art"
    end
    f.actions
  end
end