# frozen_string_literal: true
class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :content, null: false
      t.float :rating
      t.string :starter_code
      t.integer :creator_id
    end
    add_index :challenges, :creator_id
  end
end
