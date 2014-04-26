class Guide < ActiveRecord::Base
	has_many :itineraries, dependent: :destroy
end
