class TestCase < ApplicationRecord
  belongs_to :challenges, class_name: 'Challenge', foreign_key: :challenge_id
end