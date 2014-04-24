class AddUseridToItinerary < ActiveRecord::Migration
  def change
    add_column :itineraries, :user_id, :integer
    add_column :itineraries, :day, :integer
    add_column :itineraries, :address, :string
  end
end
