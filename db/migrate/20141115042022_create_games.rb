class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id
      t.integer :drawn_numbers, array: true, null: false, default: []

      t.timestamps
    end

    add_index :games, :winner_id
  end
end
