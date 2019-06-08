# frozen_string_literal: true
require 'rails_helper'

RSpec.describe TestCase, type: :model do
  subject(:test_case) { build(:test_case, content: content) }

  let(:content) { 'content' }

  it { is_expected.to be_an(ApplicationRecord) }
  it { is_expected.to belong_to(:challenge) }
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to validate_presence_of(:challenge_id) }

  describe 'content body' do
    context 'when the body has special characters' do
      let(:content) { 'h!@#$%^&*()-=;\',.<>/""{}|`~`' }
      it 'escapes them and saves successfully' do
        expect(test_case.save).to eq(true)
      end
    end
  end
end
