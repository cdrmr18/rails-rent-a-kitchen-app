class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user

  validates :price, :name, :city, :description, :address, presence: true
end
