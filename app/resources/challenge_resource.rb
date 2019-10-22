# frozen_string_literal: true

class ChallengeResource < ApplicationResource
  attribute :creator_id, :integer
  attribute :content, :string
  attribute :rating, :float
  attribute :starter_code, :string
  attribute :par, :integer
  attribute :type, :string

  belongs_to :creator, resource: UserResource
  has_many :games
end
