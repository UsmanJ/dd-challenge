require './lib/data_filter.rb'
require 'json'

describe DataFilter do

  let(:data) {JSON.generate({results: [
    {quantity: 4},
    {quantity: 2}
  ]})}

  subject(:data_filter) { described_class.new(data) }

  context '#average_quantity' do

    it 'should return the average quantity' do
      expect(data_filter.average_quantity).to eq 3
    end

  end





end
