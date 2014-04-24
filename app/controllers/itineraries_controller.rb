class ItinerariesController < ApplicationController
  before_action :require_signin, except: [:index, :show]
  before_action :set_itinerary, only: [:show, :edit, :update, :destroy]
  before_action :require_correct_user2, only: [:edit, :update, :destroy]

  # GET /itineraries
  # GET /itineraries.json
  def index
    @itineraries = Itinerary.all
  end

  # GET /itineraries/1
  # GET /itineraries/1.json
  def show
  end

  # GET /itineraries/new
  def new
    @itinerary = Itinerary.new
  end

  # GET /itineraries/1/edit
  def edit
  end

  # POST /itineraries
  # POST /itineraries.json
  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user

    respond_to do |format|
      if @itinerary.save
        format.html { redirect_to new_itinerary_hint_path(@itinerary), notice: 'Itinerary was successfully created, now create some hints!.' }
        format.json { render :show, status: :created, location: @itinerary }
      else
        format.html { render :new }
        format.json { render json: @itinerary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itineraries/1
  # PATCH/PUT /itineraries/1.json
  def update
    respond_to do |format|
      if @itinerary.update(itinerary_params)
        format.html { redirect_to @itinerary, notice: 'Itinerary was successfully updated.' }
        format.json { render :show, status: :ok, location: @itinerary }
      else
        format.html { render :edit }
        format.json { render json: @itinerary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itineraries/1
  # DELETE /itineraries/1.json
  def destroy
    @itinerary.destroy
    respond_to do |format|
      format.html { redirect_to itineraries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerary
      @itinerary = Itinerary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itinerary_params
      params.require(:itinerary).permit(:entry, :author, :image_url, :address, :day)
    end

    def require_correct_user2
      if current_user.id != @itinerary.user_id
        redirect_to root_path, alert: 'Please login as the correct user!'
      end    
  end
end
