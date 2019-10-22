require 'rails_helper'

RSpec.describe 'challenges#create', type: :request do
  subject(:make_request) do
    jsonapi_post '/v1/challenges', payload
  end

  describe 'basic create' do
    let(:creator) { create(:user) }
    let(:params) { attributes_for(:challenge) }
    let(:payload) do
      {
        data: {
          type: 'challenges',
          attributes: params.merge(creator_id: creator.id)
        }
      }
    end

    it 'works' do
      expect(ChallengeResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Challenge.count }.by(1)
    end
  end
end
