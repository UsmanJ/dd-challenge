require_relative 'api_fetcher'
require 'json'

class DataFilter

  attr_reader :api_fetch, :data

  def initialize(data)
    @data = JSON.parse(data)
  end

  def count
    data['count']
  end

  def average_price
    @data['results']
    i = 0
    sum = 0
    while i < @data['results'].count
      sum += @data['results'][i]['price'].to_f
      i += 1
      puts "this item costs £#{sum}. The total is £#{sum}"
      puts "average is now £#{(sum / @data['results'].count).round(2)}"
    end
    p (sum / @data['results'].count).round(2)
  end

  def min_max_price
    data['results'].minmax {|a,b|a['price'] <=> b['price']}
  end

end
