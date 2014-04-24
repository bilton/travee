class Itinerary < ActiveRecord::Base
	belongs_to :user
	has_many :event_votes, dependent: :destroy
	has_many :hints, dependent: :destroy
end
