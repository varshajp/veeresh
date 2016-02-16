class Feedback < ActiveRecord::Base
belongs_to :user
validates_presence_of :seating_comfort,:ac,:movie_video_output,:movie_audio_quality


end
