class AddInstagramLinkToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :instagram_link, :string
  end
end
