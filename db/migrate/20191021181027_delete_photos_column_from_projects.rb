class DeletePhotosColumnFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :photos
  end
end
