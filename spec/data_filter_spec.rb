require './lib/data_filter.rb'

describe DataFilter do

  # before do
  #   json_object = {"count":50100,"results":[{"listing_id":240851819,"state":"active","user_id":16810203,"category_id":68930946,"title":"Festival clothing gypsy boho top floral tops off shoulder top vintage top peasant blouse floral shirt hippie clothes  Dolly Topsy Etsy UK","description":"Vintage top peasant blouse off shoulder gypsy boho tops medium clothing floral shirt hippie clothes summer tees Dolly Topsy Etsy UK\n\nFloral gypsy top in neutral beige and candy pink flowers .\nElasticated around neck sleeves and hem. \nCould be worn off shoulder style .\n\nMeasurements\nUK size 12 \/ 14\nUSA size 10 \/ 12\nChest 38 &quot;\nLength 26 &quot;\n\nCondition - excellent.\n\nThis beautiful item will come to you carefully wrapped, and will be posted by \nthe next working day after payment is received. (Royal Mail UK and International, fully insured. should not incur extra charges )\n\n\nMore vintage gems at www.dollycalledtopsy.etsy.com\n\nFollow me on Instagram at https:\/\/instagram.com\/dollytopsy\/","creation_tsz":1455620030,"ending_tsz":1466070830,"original_creation_tsz":1437237340,"last_modified_tsz":1455620030,"price":"18.00","currency_code":"GBP","quantity":1,"tags":["festival clothing","gypsy boho top","floral tops","Off shoulder top","vintage top","peasant blouse","floral shirt","hippie clothes","summer tees","medium blouse","etsy uk","dolly topsy","top vintage"],"category_path":["Clothing","Women","Blouse"],"category_path_ids":[69150353,69152559,68930946],"materials":["cotton blend"],"shop_section_id":13360787,"featured_rank":null,"state_tsz":1438879249,"url":"https:\/\/www.etsy.com\/listing\/240851819\/festival-clothing-gypsy-boho-top-floral?utm_source=teammakers&utm_medium=api&utm_campaign=api","views":602,"num_favorers":44,"shipping_template_id":2178305982,"processing_min":1,"processing_max":2,"who_made":"someone_else","is_supply":"false","when_made":"1990_1996","item_weight":null,"item_weight_units":null,"item_length":null,"item_width":null,"item_height":null,"item_dimensions_unit":"in","is_private":false,"recipient":"women","occasion":null,"style":["Boho","Folk"],"non_taxable":true,"is_customizable":false,"is_digital":false,"file_data":"","language":"en-US","has_variations":false,"taxonomy_id":554,"taxonomy_path":["Clothing","Women's Clothing","Tops & Tees","Blouses"],"used_manufacturer":false}]}
  # end

  subject(:data_filter) { described_class.new }

  it 'should output a json object' do
    data_filter.highest_price
    expect(data_filter.add).to eq(50100)
  end

  # it 'should output a json object' do
  #   expect(data_filter.lowest_price).to eq(50100)
  # end




end
