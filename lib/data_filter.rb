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
    sum = 0
    data['results'].each { |item| sum += item['price'].to_f }
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

  def min_max_quantity
    data['results'].minmax {|a,b|a['quantity'] <=> b['quantity']}
  end

  def json_price
    results = {}
    results['average'] = average_price
    results['highest_quantity'] = min_max_price[1]
    results['lowest_quantity'] = min_max_price[0]
    results
  end

  def json_quantity
    results = {}
    results['average'] = average_quantity
    results['highest_quantity'] = min_max_quantity[1]
    results['lowest_quantity'] = min_max_quantity[0]
    results
  end

  def tags_count
    counts = Hash.new(0)
    results = []
    data['results'].each do |result|
      result['tags'].each do |tag|
        counts[tag] += 1
      end
    end
    counts = counts.sort { |a,b| a[1] <=> b[1] }
    5.times do
      results += counts.pop
    end
  end

  def common_materials
    materials = Hash.new(0)
    results = []
    data['results'].each do |item|
      item['materials'].each do |material|
        materials[material] += 1
      end
    end
    materials = materials.sort {|a,b| a[1] <=> b[1]}
    5.times { results += materials.pop }
    results.reject {|v| results.index(v).odd?}
  end

  def common_materials_listings
    materials = common_materials
    results = []
    data['results'].each do |item|
      item['materials'].each do |material|
        if materials.include? material
          results.push(item)
        end
      end
    end
    results.uniq
  end

  def json_materials
    results = {}
    results['top_5'] = common_materials
    results['listings_with_common_materials'] = common_materials_listings
    results
  end

end
