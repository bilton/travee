class Itinerary < ActiveRecord::Base
	belongs_to :user
	belongs_to :guide
	has_many :event_votes, dependent: :destroy
	has_many :hints, dependent: :destroy
end
