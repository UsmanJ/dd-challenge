require 'sinatra'
require 'json'
require_relative 'api_fetcher'
require_relative 'data_filter'

get '/' do
  content_type :json
  fetcher = ApiFetcher.new
  fetcher.request
  fetcher.ok? ? fetcher.response_data : (fail "Bad request")
end

get '/quantity' do
  content_type :json
  fetcher = ApiFetcher.new
  fetcher.request
  filter = DataFilter.new(fetcher.response_data)
  filter.json_quantity.to_json
end

get '/price' do
  content_type :json
  fetcher = ApiFetcher.new
  fetcher.request
  filter = DataFilter.new(fetcher.response_data)
  filter.json_price.to_json
end

get '/materials' do
  content_type :json
  fetcher = ApiFetcher.new
  fetcher.request
  filter = DataFilter.new(fetcher.response_data)
  filter.json_materials.to_json
end
