class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :winner
      t.integer :loser
      t.time :time

      t.timestamps
    end
    add_index :games, [:winner, :loser]
  end
end
