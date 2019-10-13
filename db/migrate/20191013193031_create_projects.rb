class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :fb_link
      t.string :spotify_link
      t.string :cd_link

      t.timestamps
    end
  end
end
