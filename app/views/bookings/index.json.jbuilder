json.array!(@bookings) do |booking|
  json.extract! booking, :id, :day, :show, :type, :number_of_seats, :t_c, :cinema_id
  json.url booking_url(booking, format: :json)
end
