# frozen_string_literal: true

class GameResource < ApplicationResource
  attribute :winner_id, :integer
  attribute :loser_id, :integer
  attribute :time, :integer

  belongs_to :winner, resource: UserResource
  belongs_to :loser, resource: UserResource
end
