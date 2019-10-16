class AddEnglishDescriptionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :english_description, :text
  end
end
