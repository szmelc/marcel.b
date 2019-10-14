class Project < ApplicationRecord
  attr_accessor :photos
  serialize :photos
  mount_uploaders :photos, PhotosUploader
  validates_presence_of :name

  has_many :albums
end
