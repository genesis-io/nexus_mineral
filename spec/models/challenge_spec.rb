require 'rails_helper'

RSpec.describe Challenge, type: :model do
  subject(:challenge) { build(:challenge, content: content, starter_code: starter_code) }
  let(:content) { 'content' }
  let(:starter_code) {'
    def returns_true
      true
    end
  '}
  it { is_expected.to be_an(ApplicationRecord) }
  it { is_expected.to validate_presence_of(:content) }
  it { is_expected.to validate_presence_of(:creator_id) }
  it { is_expected.to belong_to(:creator) }

  describe 'starter_code body' do
    context 'when the body has special characters' do
      let(:starter_code) { 'h!@#$%^&*()-=;\',.<>/""{}|`~`' }
      it 'escapes them and saves successfully' do
        expect(challenge.save).to eq(true)
      end
    end
  end
end
