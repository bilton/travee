class EventVotesController < ApplicationController
	before_action :require_signin

	def index
		redirect_to root_url, notice: "Redirecting from EventVotes#index"
	end

	def create
		@itinerary = Itinerary.find(params[:itinerary_id])
		@itinerary.event_votes.create!(user: current_user)
		redirect_to root_url, notice: "successfully added a vote"
		
		# if @itinerary.event_votes.find_by(user: current_user)
		# 	redirect_to root_url, notice: "You have already voted"
		# else

		# end
	end

	def destroy
		@event_votes = EventVote.find(params[:id])
		@event_votes.destroy
		redirect_to  root_url, notice: "Successfully down voted"
	end
end
