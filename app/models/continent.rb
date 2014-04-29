class Continent < ActiveRecord::Base
	# attr_accessible :continent_name, :guides_attributes
	has_many :guides, dependent: :destroy
#	accepts_nested_attributes_for :guides, allow_destroy: true

	CONT = ["Australia", "Asia-Pacific", "Europe", "Africa", "Middle East", "North America", "South America"]
end
