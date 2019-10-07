class Concert < ApplicationRecord
  validates_presence_of :city, :date, :name, :venue
end
