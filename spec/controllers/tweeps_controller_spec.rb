require 'rails_helper'

describe TweepsController, :type => :controller do
  describe '#most_relevants', vcr: "TweepsController.most_relevants" do
    subject(:request) do
      get :most_relevants, :format => :json
    end

    it 'returns 204' do
      subject
      expect(response.status).to eq 204
    end
  end
end
