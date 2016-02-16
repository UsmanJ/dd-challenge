class ApiFetcher

  attr_reader :base_url, :key

  def initialize(url = 'https://openapi.etsy.com/v2/listings/active')
    @base_url = url
    @key = ENV['ETSYKEY']
  end

  def build_url
    "#{base_url}?api_key=#{key}"
  end

end
