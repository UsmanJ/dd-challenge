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
    end
    (sum / @data['results'].count).round(2)
  end

  def min_max_price
    data['results'].minmax {|a,b|a['price'] <=> b['price']}
  end

  def average_quantity
    total = 0
    data['results'].each { |item| total += item['quantity'] }
    total / data['results'].length
  end

end
