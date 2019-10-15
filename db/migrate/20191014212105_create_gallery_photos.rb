class CreateGalleryPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :gallery_photos do |t|
      t.string :picture

      t.timestamps
    end
  end
end
