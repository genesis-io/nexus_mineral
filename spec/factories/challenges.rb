# frozen_string_literal: true
require 'faker'

FactoryBot.define do
  factory :challenge do
    association :creator, factory: :user
    content { Faker::Lorem.paragraph(1) }
    starter_code { Faker::Lorem.paragraph(1) }
    rating { Random.rand(5)}
  end
end
