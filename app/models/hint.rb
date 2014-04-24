class Hint < ActiveRecord::Base
  belongs_to :itinerary
  has_many :hint_votes, dependent: :destroy
end
