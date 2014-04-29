class Itinerary < ActiveRecord::Base
	# attr_accessible :entry, :image_url, :address, :title, :guide_id, :user_id, :hints_attributes
	belongs_to :user
	belongs_to :guide
	has_many :event_votes, dependent: :destroy
	has_many :hints, dependent: :destroy

	accepts_nested_attributes_for :hints, allow_destroy: true
end
