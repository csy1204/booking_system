class Locker < ApplicationRecord
  belongs_to :section
  has_one :booking
end
