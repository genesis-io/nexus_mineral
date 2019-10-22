# frozen_string_literal: true

class UserResource < ApplicationResource
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  has_many :challenges
  has_many :games
end
