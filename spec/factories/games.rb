# frozen_string_literal: true
FactoryBot.define do
  factory :game do
    association :winner, factory: :user
    association :loser, factory: :user
    time { Random.rand(100) }
  end
end
