# frozen_string_literal: true
require 'faker'

FactoryBot.define do
  factory :challenge do
    association :creator, factory: :user
    creator_id { Random.rand(5) } # TODO: Remove 
    content { Faker::Lorem.paragraph(1) }
    starter_code { Faker::Lorem.paragraph(1) }
    type { 'algo' }
    rating { Random.rand(5)}
  end
end
