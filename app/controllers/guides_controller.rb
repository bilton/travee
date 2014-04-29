class GuidesController < ApplicationController
	before_action :load_continents

	def show
		@guide = Guide.find(params[:id])
	end

	def edit
		@guide = Guide.find(params[:id])		
	end

	def update
		@guide = Guide.find(params[:id])
		if @guide.update(guide_params)
			redirect_to @guide, notice: "Successfully editted guide"
		else
			render :edit
		end
	end

private
	def guide_params
		params.require(:guide).permit(
			:title, :intro, :continent_id,
			itineraries_attributes: [:id, :guide_id, :user_id, :title, :entry, :address, :image_url,
				hints_attributes: [:id, :entry, :itinerary_id]]
			)
	end

end
