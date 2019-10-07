class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.string :name
      t.string :city
      t.string :country
      t.string :venue
      t.string :festival_name
      t.string :details

      t.timestamps
    end
  end
end
