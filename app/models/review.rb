class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :rating, presence: true, inclusion: {1..5}
  validates :comment, presence: true
end
