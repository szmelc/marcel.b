class Project < ApplicationRecord
  default_scope { order(order: :asc) }
  attr_accessor :photos
  serialize :photos
  validates_presence_of :name, :description, :english_description

  has_many :albums
  has_many :project_photos
end
