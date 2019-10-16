class Album < ApplicationRecord
  belongs_to :project

  mount_uploader :cover, AlbumCoverUploader

  validates_presence_of :name, :year, :cover, :description, :english_description
end
