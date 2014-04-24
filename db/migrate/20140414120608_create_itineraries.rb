class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.text :entry
      t.string :author
      t.string :image_url

      t.timestamps
    end
  end
end
