class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :star, null: false, foreign_key: true
      t.date :arrival_date
      t.date :departure_date
      t.integer :total_price

      t.timestamps
    end
  end
end
