class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.string :offered_
      t.string :price
      t.string :date
      t.string :user_name
      t.string :guest_count
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
