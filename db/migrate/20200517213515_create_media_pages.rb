class CreateMediaPages < ActiveRecord::Migration[6.0]
  def change
    create_table :media_pages do |t|
      t.text :content

      t.timestamps
    end
  end
end
