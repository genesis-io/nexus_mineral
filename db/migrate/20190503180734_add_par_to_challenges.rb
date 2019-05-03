class AddParToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :par, :integer
  end
end
