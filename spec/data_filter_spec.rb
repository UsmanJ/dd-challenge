require './lib/data_filter.rb'
require 'json'

describe DataFilter do

  let(:data) {JSON.generate({results: [
    {quantity: 4},
    {quantity: 2},
    {quantity: 4},
    {quantity: 3},
    {quantity: 2}
  ]})}

  let(:data2) {JSON.generate({results: [
    {price: 3.0},
    {price: 4.0},
    {price: 5.0},
    {price: 6.0},
    {price: 7.0}
  ]})}


  subject(:data_filter) { described_class.new(data) }
  subject(:data_filter2) { described_class.new(data2) }

  context '#average_quantity' do

    it 'should return the average quantity' do
      expect(data_filter.average_quantity).to eq 3
    end

  end

  context '#average_price' do

    it 'should return the average price' do
      expect(data_filter2.average_price).to eq 5.0
    end

  end

  context '#min_max_price' do

    it 'should return the items with the highest and lowest price' do
      expect(data_filter2.min_max_price).to eq([{'price'=>3.0}, {'price'=>7.0}])
    end

  end

  context '#min_max_quantity' do

    it 'should return the items with the highest and lowest quantity' do
      expect(data_filter.min_max_quantity).to eq([{'quantity'=>2}, {'quantity'=>4}])
    end

  end

  context '#min_max_quantity' do

    it 'should return the items with the highest and lowest quantity' do
      expect(data_filter.min_max_quantity).to eq([{'quantity'=>2}, {'quantity'=>4}])
    end

  end

  context '#json_quantity' do
    it 'should return a results hash' do
      expect(data_filter.json_quantity).to eq({"average"=>3, "highest_quantity"=>{"quantity"=>4}, "lowest_quantity"=>{"quantity"=>2}})
    end
  end

  # context '#tags_count' do
  #   it 'should return the top 5 tags' do
  #     expect(data_filter.tags_count).to eq({"average"=>3, "highest_quantity"=>{"quantity"=>4}, "lowest_quantity"=>{"quantity"=>2}})
  #   end
  # end


end
