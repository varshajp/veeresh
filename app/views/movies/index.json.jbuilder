json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :language, :duration, :release_date, :cinema_id, :review_id
  json.url movie_url(movie, format: :json)
end
