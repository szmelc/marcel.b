class Concert < ApplicationRecord
  validates_presence_of :city, :date, :name, :venue

  scope :recent, -> { order('date desc').limit(8) }
  scope :upcoming, -> { order('date asc').limit(8) }
end
