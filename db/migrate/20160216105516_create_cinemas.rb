class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :screen_name
      t.string :seat_name
      t.string :seat_type
      t.string :price

      t.timestamps null: false
    end
  end
end
