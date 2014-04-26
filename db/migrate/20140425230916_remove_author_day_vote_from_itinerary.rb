class RemoveAuthorDayVoteFromItinerary < ActiveRecord::Migration
  def up
  	Itinerary.delete_all
  	remove_column :itineraries, :author
  	remove_column :itineraries, :day
  	remove_column :itineraries, :vote
  	add_column :itineraries, :title, :string
  end

  def down
   	Itinerary.delete_all 	
   	add_column :itineraries, :author
  	add_column :itineraries, :day
  	add_column :itineraries, :vote
  	remove_column :itineraries, :title, :string 	
  end
end
