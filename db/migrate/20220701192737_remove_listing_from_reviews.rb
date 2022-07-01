class RemoveListingFromReviews < ActiveRecord::Migration[6.1]
  def change
     remove_reference :reviews, :listing, index: true, foreign_key: true
  end
end
