class CreateTestCases < ActiveRecord::Migration[5.2]
  def change
    create_table :test_cases do |t|
      t.serial :id
      t.string :content:, null: false
    end
  end
end
