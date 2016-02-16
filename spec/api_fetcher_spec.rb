require 'api_fetcher'

describe ApiFetcher do

  let(:url) { 'https://openapi.etsy.com/v2/listings/active?api_key=n6mbi422ip24opnbsin32bk9' }
  subject(:apiFetch) { described_class.new() }

  context '#build_url' do

    it 'constructs the api url' do
      expect(apiFetch.build_url).to eq(url)
    end

  end

  context '#request' do

    it 'makes an api request' do
      expect(HTTParty).to receive(:get).with(url, {:verify=>false}){''}
      apiFetch.request
      expect(apiFetch.response).to eq('')
    end

  end

end
