require 'json'

class DataFilter

  attr_reader :json_object

  def initialize
    @json_object = {"count":50100,"results":[{"listing_id":240851819,"item_weight_units":null,"item_length":null,"item_width":null}]}
  end

  def highest_price
    "hello"
  end

  def lowest_price

  end

  def average_price

  end

end
