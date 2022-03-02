require 'rails_helper'

describe TweepsService do
  describe '#initialize', vcr: "TweepsService.new" do
    subject { TweepsService.new }
    let(:query_params) { {:q=>"@locaweb"} }
    let(:headers) { {:Username=>"ingrid.santos@locaweb.com"} }

    it 'defines headers' do
      expect(subject.instance_variable_get(:@headers)).to eq(headers)
    end

    it 'defines query params' do
      expect(subject.instance_variable_get(:@params)).to eq(query_params)
    end
  end

  describe '#tweets', vcr: "TweepsService.tweets" do
    subject do
      TweepsService.new.tweets
    end

    let(:request_url) { 'http://tweeps.locaweb.com.br/tweeps' }
    let(:query_params) { {:q=>"@locaweb"} }
    let(:headers) { {:Username=>"ingrid.santos@locaweb.com"} }

    it 'request to tweeps locaweb url' do
      expect(subject.request.base_uri).to eq request_url
    end

    it 'returns status ok' do
      expect(subject.ok?).to eq true
    end

    it 'return statuses key' do
      expect(subject.keys).to include 'statuses'
    end

    it 'request with correct headers' do
      expect(subject.request.options[:headers]).to eq headers
   end

    it 'request passing locaweb user on query' do
      expect(subject.request.options[:query]).to eq query_params
    end
  end

  describe '#most_relevants', vcr: "TweepsService.most_relevants" do
    subject do
      TweepsService.new.most_relevants
    end
  end


    # context 'do not returns tweets not mentioning locaweb user' do
    #   # mock request
    #   it 'returns only twets mentioning locaweb user' do
    #     subject
    #     # expect(response.status).to eq 204
    #   end
    # end
    #
    # context 'do not returns tweets in reply to locaweb' do
    #   # mock request
    # end
    #
    # context 'order tweets by followers' do
    #   # mock request
    # end
    #
    # context 'order tweets by retweets' do
    #   # mock request
    # end
    #
    # context 'order tweets by likes' do
    #   # mock request
    # end

end
