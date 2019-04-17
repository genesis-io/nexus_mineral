class AddNotNullToCreatorOfChallenge < ActiveRecord::Migration[5.2]
  def change
    change_column :challenges, :creator_id, :integer, null: false
  end
end
