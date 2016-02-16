class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :seating_comfort
      t.string :ac
      t.string :movie_audio_quality
      t.string :movie_video_output
      t.string :suggestion
      t.string :complaint
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
