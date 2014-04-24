class HintsController < ApplicationController
	def index
		@itinerary = Itinerary.find(params[:itinerary_id])
		@hints = @itinerary.hints
	end

	def edit
		@itinerary = Itinerary.find(params[:itinerary_id])
		@hint = @itinerary.hints.find(params[:id])
	end

	def new
		@itinerary = Itinerary.find(params[:itinerary_id])
		@hint = @itinerary.hints.new
	end

	def create
		@itinerary = Itinerary.find(params[:itinerary_id])
		@hint = Hint.new(hint_params)
		@hint.itinerary = @itinerary
		if @hint.save
			redirect_to itinerary_hints_path(@itinerary), notice: 'Hint created! Want to add more?'
		else
			render :new
		end
	end

	def update
		@itinerary = Itinerary.find(params[:itinerary_id])
		@hint = @itinerary.hints.find(params[:id])
		if @hint.update(hint_params)
			redirect_to itinerary_hints_path(@itinerary), notice: 'successfully editted hint'
		else 
			render :edit
		end
	end

private
	def hint_params
		params.require(:hint).permit(:entry)
	end

end
