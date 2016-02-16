class CreateVeereshAccounts < ActiveRecord::Migration
  def change
    create_table :veeresh_accounts do |t|
      t.integer :no_of_tickets_online
      t.integer :no_of_tickets_box
      t.integer :total_amt_per_day
      t.integer :booking_id
      t.integer :cinema_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
