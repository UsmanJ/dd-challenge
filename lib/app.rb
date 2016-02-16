require 'sinatra'
require_relative 'api_fetcher'

get '/' do
  content_type :json
  fetcher = ApiFetcher.new
  fetcher.request
  fetcher.ok? ? fetcher.response_data : fail "Bad request"
end
