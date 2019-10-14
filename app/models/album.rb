class Album < ApplicationRecord
  belongs_to :project

  mount_uploader :cover, AlbumCoverUploader
end
