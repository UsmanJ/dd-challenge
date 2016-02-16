require './lib/data_filter.rb'
require 'json'

describe DataFilter do

  let(:data) {JSON.generate({results: [
    {quantity: 4, materials: ['wood', 'iron']},
    {quantity: 3, materials: ['wood', 'iron']},
    {quantity: 2, materials: ['wood', 'steel']},
    {quantity: 2, materials: ['wood', 'glass']},
    {quantity: 2, materials: ['titanium', 'glass']},
    {quantity: 2, materials: ['cloth', 'hemp']},
    {quantity: 2, materials: ['fiber', 'plastic']},
    {quantity: 2, materials: ['fiber', 'plastic']},
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
      expect(data_filter.average_quantity).to eq 2
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
      expect(data_filter.min_max_quantity).to eq([{"quantity"=>2, "materials"=>["wood", "steel"]}, {"quantity"=>4, "materials"=>["wood", "iron"]}])
    end
  end

  context '#json_quantity' do
    it 'should return a results hash' do
      expect(data_filter.json_quantity).to eq({"average"=>2, "highest_quantity"=>{"quantity"=>4, "materials"=>["wood", "iron"]}, "lowest_quantity"=>{"quantity"=>2, "materials"=>["wood", "steel"]}})
    end
  end

  context '#common_materials' do
    it 'should return array of top 5 common materials' do
      expect(data_filter.common_materials).to eq(["wood", "plastic", "glass", "iron", "fiber"])
    end
  end

  context '#common_materials_listings' do
    it 'should return the listings that use top 5 common materials' do
      expect(data_filter.common_materials_listings).to eq([{"quantity"=>4, "materials"=>["wood", "iron"]}, {"quantity"=>3, "materials"=>["wood", "iron"]}, {"quantity"=>2, "materials"=>["wood", "steel"]}, {"quantity"=>2, "materials"=>["wood", "glass"]}, {"quantity"=>2, "materials"=>["titanium", "glass"]}, {"quantity"=>2, "materials"=>["fiber", "plastic"]}])
    end
  end

end
