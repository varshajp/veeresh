class VeereshAccount < ActiveRecord::Base
belongs_to :cinema
belongs_to :booking
belongs_to :users
validates_presence_of :no_of_ticket_online,:no_of_ticket_box,:total_amt_per_day

end
