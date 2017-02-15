class User < ApplicationRecord
  # Include default devis_con modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :major
  has_one :booking
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
