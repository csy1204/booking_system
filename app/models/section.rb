class Section < ApplicationRecord
  belongs_to :major
  has_many :lockers
end
