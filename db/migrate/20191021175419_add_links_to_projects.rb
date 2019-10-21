class AddLinksToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :youtube_link, :string
  end
end
