class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :booking

  validates :rating, presence: true, inclusion: {1..5}
  validates :comment, presence: true
end
