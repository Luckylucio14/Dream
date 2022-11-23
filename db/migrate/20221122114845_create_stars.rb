class CreateStars < ActiveRecord::Migration[7.0]
  def change
    create_table :stars do |t|
      t.string :name
      t.string :location
      t.string :atmosphere
      t.string :picture
      t.integer :capacity
      t.string :price_per_night
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
