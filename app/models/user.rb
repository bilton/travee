class User < ActiveRecord::Base
	has_many :itineraries
	has_many :event_votes, dependent: :destroy
	has_many :hint_votes, dependent: :destroy
  has_secure_password
end
