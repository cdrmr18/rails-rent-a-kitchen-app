class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_one :review

  validates :start_date, :end_date, :total, presence: true
end
