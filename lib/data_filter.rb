require_relative 'api_fetcher'

class DataFilter

  attr_reader :api_fetch

  def initialize(data)
    @data = data
  end

  def count
    @data['count']
  end

  def average_price
    @data['results']
    i = 0
    while i < @data['results'].count
      sum +=@data['results'][i]['price']
      i += 1
      puts "This loop will run #{i} more times"
    end
    p sum
  end

  def lowest_price

  end

end
