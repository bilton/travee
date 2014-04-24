class CreateHintVotes < ActiveRecord::Migration
  def change
    create_table :hint_votes do |t|
      t.references :user, index: true
      t.references :hint, index: true

      t.timestamps
    end
  end
end
