class CreateEventVotes < ActiveRecord::Migration
  def change
    create_table :event_votes do |t|
      t.references :itinerary, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
