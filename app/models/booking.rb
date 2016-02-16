class Booking < ActiveRecord::Base
has_many :veeresh_accounts
has_many :online_bookings
has_many :movies, through: :online_bookings
belongs_to :cinema
validates_presence_of :day,:type,:no_of_seats,:t_c
end
