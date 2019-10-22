class AddLinkToConcerts < ActiveRecord::Migration[6.0]
  def change
    add_column :concerts, :link, :string
  end
end
