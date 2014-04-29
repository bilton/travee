class ContinentsController < ApplicationController
	before_action :load_continents
	
	def show
		@continent = Continent.find(params[:id])
	end

	def new
		@continent = Continent.new
	end
end
