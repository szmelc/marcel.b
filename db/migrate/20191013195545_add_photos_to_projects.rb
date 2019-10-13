class AddPhotosToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :photos, :json
  end
end
