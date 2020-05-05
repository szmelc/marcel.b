class HomepagePhoto < ApplicationRecord
  mount_uploader :picture, HomepagePhotoUploader

  before_save :set_active

  private

  def set_active
    HomepagePhoto.where.not(id: id).update_all(active: false)
  end
end
