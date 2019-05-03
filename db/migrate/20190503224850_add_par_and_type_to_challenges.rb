class AddParAndTypeToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :par, :integer
    add_column :challenges, :type, :string
  end
end
