class HintVotesController < ApplicationController
	def create
		# @itinerary = Itinerary.find(params[:itinerary_id])
		@hint = Hint.find(params[:hint_id])
		@hint.hint_votes.create!(user: current_user)
		redirect_to root_url, notice: "Thanks for voting on the hint!"
	end

	def destroy
		@hint_vote = HintVote.find(params[:id])
		@hint_vote.destroy
		redirect_to root_url, notice: "Down voted the hint!"
	end
end
