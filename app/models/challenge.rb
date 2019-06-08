# frozen_string_literal: true
class Challenge < ApplicationRecord
  include ActiveRecord::Sanitization::ClassMethods

  has_many :test_cases, class_name: 'TestCase'
  belongs_to :creator, class_name: 'User', foreign_key: :creator_id

  validates :content, presence: true
  validates :creator_id, presence: true
  
  before_save :escape_special_characters

  attribute :rating, default: 0

  private

  def escape_special_characters
    sanitized_query = ActiveRecord::Base.connection.quote_string(starter_code)
    starter_code = sanitize_sql_like(sanitized_query)
  end
end