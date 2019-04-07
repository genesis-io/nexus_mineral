class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :winner_id, null: false
      t.integer :loser_id, null: false
      t.integer :time

      t.timestamps
    end
    add_index :games, [:winner_id]
    add_index :games, [:loser_id]
  end
end
