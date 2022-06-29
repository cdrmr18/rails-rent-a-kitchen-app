class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews

  validates :price, :name, :city, :description, :address, presence: true
end
