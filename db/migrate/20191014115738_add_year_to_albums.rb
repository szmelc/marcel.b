class AddYearToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :year, :integer, null: false
  end
end
