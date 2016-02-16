require './lib/data_filter.rb'
require 'json'

describe DataFilter do

  let(:data) {JSON.generate({results: [
    {quantity: 4, price: 3.0},
    {quantity: 2, price: 3.0}
  ]})}

  subject(:data_filter) { described_class.new(data) }

  context '#average_quantity' do

    it 'should return the average quantity' do
      expect(data_filter.average_quantity).to eq 3
    end

  end

  context '#average_price' do

    it 'should return the average price' do
      expect(data_filter.average_price).to eq 3.0
    end

  end


end
