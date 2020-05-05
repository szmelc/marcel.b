class AddActiveToHomepagePhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :homepage_photos, :active, :boolean, default: false
  end
end
