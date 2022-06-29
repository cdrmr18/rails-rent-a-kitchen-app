class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.string :city, null: false
      t.text :description, null: false
      t.string :address, null: false

      t.timestamps
    end
  end
end
