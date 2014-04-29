class Guide < ActiveRecord::Base
	# attr_accessible :title, :intro, :continent_id, :itineraries_attributes
	has_many :itineraries, dependent: :destroy
	belongs_to :continent
	accepts_nested_attributes_for :itineraries, allow_destroy: true
end
