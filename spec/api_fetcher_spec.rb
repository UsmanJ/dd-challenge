require 'api_fetcher'

describe ApiFetcher do

  let(:key) { '123456' }
  subject(:apiFetch) { described_class.new() }

  context '#url_builder' do

    it 'constructs the api url' do
      expect(apiFetch.build_url).to eq('https://openapi.etsy.com/v2/listings/active?api_key=n6mbi422ip24opnbsin32bk9')
    end
  end

end
