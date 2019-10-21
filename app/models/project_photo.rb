class ProjectPhoto < ApplicationRecord
  belongs_to :project
  mount_uploader :picture, ProjectPhotoUploader
end
