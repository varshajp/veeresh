json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :seating_comfort, :ac, :movie_audio_quality, :movie_video_output, :suggestion, :complaint, :user_id
  json.url feedback_url(feedback, format: :json)
end
