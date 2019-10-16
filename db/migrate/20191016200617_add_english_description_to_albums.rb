class AddEnglishDescriptionToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :english_description, :text
  end
end
