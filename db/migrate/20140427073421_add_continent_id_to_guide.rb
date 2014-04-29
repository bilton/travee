class AddContinentIdToGuide < ActiveRecord::Migration
  def change
  	add_column :guides, :continent_id, :integer
  end
end
