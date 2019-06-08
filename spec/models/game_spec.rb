# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Game, type: :model do
  subject(:game) { build(:game) }

  it { is_expected.to be_an(ApplicationRecord) }
  it { is_expected.to belong_to(:winner) }
  it { is_expected.to belong_to(:loser) }
end
