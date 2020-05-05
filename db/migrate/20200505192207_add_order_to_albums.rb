class AddOrderToAlbums < ActiveRecord::Migration[6.0]
  def change
    add_column :albums, :order, :integer
  end
end
