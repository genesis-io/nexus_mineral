# frozen_string_literal: true
class AddNotNullToChallengeOfTestCase < ActiveRecord::Migration[5.2]
  def change
    change_column :test_cases, :challenge_id, :integer, null: false
  end
end
