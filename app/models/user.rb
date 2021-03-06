# frozen_string_literal: true
class User < ApplicationRecord
  has_many :games

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
end
