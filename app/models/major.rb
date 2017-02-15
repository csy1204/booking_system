class Major < ApplicationRecord
  has_many :sections
  has_many :users
  has_many :bookings
end
