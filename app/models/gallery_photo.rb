class GalleryPhoto < ApplicationRecord
  mount_uploader :picture, GalleryPhotoUploader
end
