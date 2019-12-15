class News < ApplicationRecord
  validates_presence_of :polish_title, :polish_content
  # has_rich_text :polish_content, :english_content
end
