json.array!(@cinemas) do |cinema|
  json.extract! cinema, :id, :screen_name, :seat_name, :seat_type, :price
  json.url cinema_url(cinema, format: :json)
end
