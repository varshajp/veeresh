class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :language
      t.time :duration
      t.date :release_date
      t.integer :cinema_id
      t.integer :review_id

      t.timestamps null: false
    end
  end
end
