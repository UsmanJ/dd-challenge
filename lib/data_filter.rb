require_relative 'api_fetcher'

class DataFilter

  attr_reader :api_fetch

  def initialize(data)
    @data = data
  end

  def count
    @data['count']
  end

  def results
    @data['results']
  end

  def lowest_price

  end

  def average_price

  end

end
