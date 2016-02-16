class AddAttachmentImage1ToMovies < ActiveRecord::Migration
  def self.up
    change_table :movies do |t|
      t.attachment :image1
    end
  end

  def self.down
    remove_attachment :movies, :image1
  end
end
