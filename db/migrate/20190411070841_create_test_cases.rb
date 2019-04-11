class CreateTestCases < ActiveRecord::Migration[5.2]
  def change
    create_table :test_cases do |t|
      t.string :content, null: false
      t.integer :challenge_id
    end
    add_index :test_cases, :challenge_id
  end
end