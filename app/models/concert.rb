class Concert < ApplicationRecord
  validates_presence_of :city, :date, :name, :venue
  scope :in_future_years, -> { where("date > ?", Date.new(Date.today.year + 1)) }
  scope :in_year, ->(year) { where(date: Date.new(year)..Date.new(year).end_of_year) }
  scope :recent, -> { order('date desc').limit(8) }
  scope :upcoming, -> { order('date asc').limit(8) }
end
