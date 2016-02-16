class Cinema < ActiveRecord::Base
has_many :veeresh_accounts
has_many :movies
has_many :bookings
validates_presence_of :screen_name,:seat_name,:seat_type,:price

end
