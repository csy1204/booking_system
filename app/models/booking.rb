class Booking < ApplicationRecord
  belongs_to :locker
  belongs_to :user
  belongs_to :major
  validates_uniqueness_of :user_id, :locker_id
end
