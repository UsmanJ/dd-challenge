require 'httparty'
require 'json'

class ApiFetcher
  include HTTParty

  attr_reader :base_url, :key

  def initialize(url = 'https://openapi.etsy.com/v2/listings/active')
    @base_url = url
    @key = ENV['ETSYKEY']
    @response = ''
  end

  def build_url
    "#{base_url}?api_key=#{key}"
  end

  def request
    self.response = HTTParty.get(build_url, verify: false)
  end

  def response_data
    response.body
  end

  def ok?
    response.message == "OK"
  end

  private

  attr_accessor :response

end
