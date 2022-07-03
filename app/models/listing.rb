class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
  has_many_attached :photos

  validates :price, :name, :city, :description, :address, presence: true
end
