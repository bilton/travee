class CreateContinents < ActiveRecord::Migration
  def change
    create_table :continents do |t|
      t.string :asia_pacific
      t.string :australia
      t.string :europe
      t.string :north_america
      t.string :south_america

      t.timestamps
    end
  end
end
