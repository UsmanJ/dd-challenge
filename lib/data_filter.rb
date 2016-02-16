require_relative 'api_fetcher'

class DataFilter

  attr_reader :api_fetch

  def initialize(api_fetch = ApiFetcher.new)
    @api_fetch = api_fetch.request
  end

  def count
    @api_fetch['count']
  end

  def results
    @api_fetch['results']
  end

  def lowest_price

  end

  def average_price

  end

end
