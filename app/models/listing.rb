class Listing < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :reservations

  validates :home_type, presence: true
  validates :pet_type, presence: true
  validates :pet_size, presence: true
  validates :breeding_years, presence: true
end
