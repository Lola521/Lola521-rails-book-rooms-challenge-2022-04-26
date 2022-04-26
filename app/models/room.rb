class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings, dependent: :destroy

  validates :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates_numericality_of :capacity, :greater_than_or_equal_to => 0
  validates :price_per_night, presence: true
  validates_numericality_of :price_per_night, :greater_than => 0
end
