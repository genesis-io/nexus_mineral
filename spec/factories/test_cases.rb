# frozen_string_literal: true
require 'faker'

FactoryBot.define do
  factory :test_case do
    association :challenge, factory: :challenge
    content { Faker::Lorem.paragraph(1) }
  end
end
