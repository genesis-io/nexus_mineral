# frozen_string_literal: true
class TestCase < ApplicationRecord
  include ActiveRecord::Sanitization::ClassMethods

  belongs_to :challenge, class_name: 'Challenge', foreign_key: :challenge_id

  before_save :escape_special_characters

  validates :content, presence: true
  validates :challenge_id, presence: true

  private

  def escape_special_characters
    sanitized_query = ActiveRecord::Base.connection.quote_string(content)
    content = sanitize_sql_like(sanitized_query)
  end
end