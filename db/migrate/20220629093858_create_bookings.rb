class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true
      t.float :total
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
