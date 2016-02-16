class Booking < ActiveRecord::Base
has_many :veeresh_accounts
has_many :online_bookings
has_many :movies, through: :online_bookings
belongs_to :cinema
validates_presence_of :day,:number_of_seats,:t_c
validate :date_of_booking
private
	
	def date_of_booking
		if !self.day.nil?
			if self.day < Date.today
				errors.add(:day)
			end
		end
	end
end

