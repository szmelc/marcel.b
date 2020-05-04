class AddInstagramToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :instagram, :string
  end
end
