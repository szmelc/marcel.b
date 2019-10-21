class CreateProjectPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :project_photos do |t|
      t.string :picture
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
