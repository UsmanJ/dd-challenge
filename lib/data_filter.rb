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

  def results
    data['results']
  end

  def lowest_price

  end

  def average_price

  end

  def average_quantity
    total = 0
    data['results'].each { |item| total += item['quantity'] }
    total / data['results'].length
  end

  def min_max_quantity
    data['results'].minmax {|a,b|a['quantity'] <=> b['quantity']}
  end

  def json_quantity
    results = {}
    results['average'] = average_quantity
    results['highest_quantity'] = min_max_quantity[1]
    results['lowest_quantity'] = min_max_quantity[0]
    results
  end


end
