class AddDetailsToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :description, :text
    add_column :albums, :buy_cd_link, :string
    add_column :albums, :stream_link, :string
  end
end
