class Movie < ActiveRecord::Base
belongs_to :cinema
belongs_to :review
has_many :online_bookings 
has_many :bookings, through: :online_bookings
validates_presence_of :name,:language,:duration,:release_date
	end
