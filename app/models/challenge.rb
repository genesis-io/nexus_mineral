class Challenge < ApplicationRecord
  has_many :test_cases, class_name: 'TestCase'
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id
end