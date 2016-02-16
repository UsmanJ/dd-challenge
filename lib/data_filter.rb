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
