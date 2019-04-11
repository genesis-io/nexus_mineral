class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.serial :id
      t.string :content:, null: false
      t.float :rating: 
      t.string :starter_code:
  end
end
