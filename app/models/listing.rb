class Listing < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
  has_many_attached :photos

  validates :price, :name, :city, :description, :address, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_city,
    against: [ :city ],
    using: {
      tsearch: { prefix: true }
    }
end
