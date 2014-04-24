class CreateHints < ActiveRecord::Migration
  def change
    create_table :hints do |t|
      t.text :entry
      t.references :itinerary, index: true

      t.timestamps
    end
  end
end
