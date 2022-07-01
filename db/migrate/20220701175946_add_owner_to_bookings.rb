class AddOwnerToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :owner_id, :integer, null: false
  end
end
