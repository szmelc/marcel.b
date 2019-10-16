class Project < ApplicationRecord
  default_scope { order(order: :asc) }
  attr_accessor :photos
  serialize :photos
  mount_uploaders :photos, PhotosUploader
  validates_presence_of :name, :description, :english_description

  has_many :albums
end
