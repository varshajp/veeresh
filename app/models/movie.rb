class Movie < ActiveRecord::Base
belongs_to :cinema
belongs_to :review
has_many :online_bookings 
has_many :bookings, through: :online_bookings
validates_presence_of :name,:language,:duration,:release_date
validate :check_date
private
	def check_date
		if !self.release_date.nil?
			if self.release_date > Date.tomorrow
				errors.add(:release_date," should Not be greater than tomorrow")
			end
		end
	end
		
end

	
