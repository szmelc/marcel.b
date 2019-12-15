class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.text :polish_content
      t.text :english_content
      t.string :polish_title
      t.string :english_title

      t.timestamps
    end
  end
end
