require './lib/data_filter.rb'

describe DataFilter do

  let(:data) {{"count":50100,"results":[{"listing_id":225081131,"state":"active","user_id":11282043,"category_id":69196975,"title":"Girl&#39;s Tutu - Blue Tutu - Blue and Purple - Frozen","description":"This handmade tutu is made with beautiful tulle and gorgeous ribbon. It is very full, some would even say poofy!! It is available in any size or colour! Very adjustable and will fit your little one for years!! \r\n\r\nGreat gift. Great price!\r\n\r\nCheck out my party packs:\r\n\r\nhttps:\/\/www.etsy.com\/shop\/TutuSister?section_id=16582518&ref=shopsection_leftnav_6","creation_tsz":1455632185,"ending_tsz":1466082985,"original_creation_tsz":1425579623,"last_modified_tsz":1455632185,"price":"23.00","currency_code":"CAD","quantity":8,"tags":["girl's tutu","kid's tutu","birthday tutu","frozen tutu","tutu party pack","tutu","tutus","blue tutu","tiffany tutu","fairy tutu","Ana","Elsa"],"category_path":["Clothing","Children","Skirt"],"category_path_ids":[69150353,68889526,69196975],"materials":[],"shop_section_id":14013999,"featured_rank":null,"state_tsz":1455511837,"url":"https:\/\/www.etsy.com\/listing\/225081131\/girls-tutu-blue-tutu-blue-and-purple?utm_source=teammakers&utm_medium=api&utm_campaign=api","views":164,"num_favorers":7,"shipping_template_id":null,"processing_min":1,"processing_max":3,"who_made":"i_did","is_supply":"false","when_made":"2010_2016","item_weight":null,"item_weight_units":null,"item_length":null,"item_width":null,"item_height":null,"item_dimensions_unit":null,"is_private":false,"recipient":null,"occasion":null,"style":null,"non_taxable":false,"is_customizable":true,"is_digital":false,"file_data":"","language":"en-US","has_variations":false,"taxonomy_id":426,"taxonomy_path":["Clothing","Girls' Clothing","Skirts"],"used_manufacturer":false}]}}
  subject(:data_filter) { described_class.new(data) }

  # it 'should output a json object' do
  #   data_filter.highest_price
  #   expect(data_filter.add).to eq(50100)
  # end

  context '#average_quantity' do

    it 'should return the average quantity' do
      expect(data_filter.average_quantity).to eq 84
    end

  end

  # it 'should output a json object' do
  #   expect(data_filter.lowest_price).to eq(50100)
  # end




end
