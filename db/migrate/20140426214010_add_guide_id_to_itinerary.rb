class AddGuideIdToItinerary < ActiveRecord::Migration
  def change
  	add_column :itineraries, :guide_id, :integer
  end
end
