require './lib/data_filter.rb'
require 'json'

describe DataFilter do

  # let(:data) {"{\"count\":50100,\"results\":[{\"listing_id\":108193482,\"state\":\"active\",\"user_id\":21799432,\"category_id\":69173727,\"title\":\"75% OFF SALE HALLOWEEN Greetings Digital Collage Sheet Scrapbooking Atc Set of 8 Digital download Printable\",\"description\":\"This is a Digital Collage Sheet.\\nIt&#39;s great for your craft and scrapbooking projects just use your imagination!\\nYou can use them also as hang tags, ATC cards or as greeting cards.\\n\\n\\u2022 Eight ATC cards 2.5x3.5 inches (each image size)\\n\\u2022 8.5&quot;x11&quot; (size JPG) perfect for A4 paper size\\n\\u2022 1 JPG\\n\\u2022 JPG resolution 300 dpi\\n\\nCameo Shoppe featured on Melissa Phillips&#39; blog Lilybean Papery:\\nhttp:\\/\\/lilybeanpaperie.typepad.com\\/lilybeans_paperie\\/2013\\/09\\/papertrey-ink-september.html\\n\\nYou can see her beautiful craft works in the second and third image.\\n\\nPLEASE NOTE:\\nThis is an INSTANT DOWNLOAD.\\nYou&#39;ll receive the link to your Email registered on Etsy.\\nYou&#39;ll be able to download the files as soon as your payment has been confirmed.\\n\\nPlease, before purchasing read my policies:\\nhttp:\\/\\/www.etsy.com\\/shop\\/cameoshoppe\\/policy\\n\\n\\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665 \\u2665\\u2665\\n\\nFast and easy!\\nThe instant download service allows you to print at your home the Cameo Shoppe designs in only few clicks.\\nIt&#39;s a wonderful way to have what you need quickly.\\nTo print the digital collage sheets is very easy.\\nYou need only an Ink-jet printer and a good white paper or card stock.\\nAll the designs are created in high resolution and my knowledge in the graphic design and print fields is the guarantee that you&#39;ll have a very good file.\\n\\nPlease note: Colors may vary slightly depending on your monitor settings.\\n\\nWhen you&#39;ll buy the items I offer you simple instructions to follow for the printing best results.\\nYou can find them in the order (after your purchase) below the item descriptions.\\n\\nAll the files are in JPG and in US LETTER size (8.5x11 inches) and they fit perfectly also the A4 paper size.\\n\\n\\u00a9 copyright by Cameo Shoppe - All rights reserved\\n\\nto my shop:\\ncameoshoppe.etsy.com\\n\\nto the holidays section:\\nhttp:\\/\\/www.etsy.com\\/shop\\/cameoshoppe?section_id=11539943&ref=shopsection_leftnav_4\",\"creation_tsz\":1455633262,\"ending_tsz\":1466084062,\"original_creation_tsz\":1346355896,\"last_modified_tsz\":1455633262,\"price\":\"1.05\",\"currency_code\":\"USD\",\"quantity\":93,\"tags\":[\"halloween\",\"digital sheet\",\"digital download\",\"digital witch\",\"vintage halloween\",\"digital halloween\",\"printable download\",\"digital scrapbooking\",\"digital atc\",\"digital hang tags\",\"halloween greetings\",\"digital greetings\",\"vintage witches\"],\"category_path\":[\"Supplies\",\"Scrapbooking\",\"Digital Collage Sheet\"],\"category_path_ids\":[69150433,68887752,69173727],\"materials\":[\"digital sheet\",\"jpg\"],\"shop_section_id\":11539943,\"featured_rank\":null,\"state_tsz\":1434143562,\"url\":\"https:\\/\\/www.etsy.com\\/listing\\/108193482\\/75-off-sale-halloween-greetings-digital?utm_source=teammakers&utm_medium=api&utm_campaign=api\",\"views\":726,\"num_favorers\":56,\"shipping_template_id\":null,\"processing_min\":null,\"processing_max\":null,\"who_made\":\"i_did\",\"is_supply\":\"true\",\"when_made\":\"2010_2016\",\"item_weight\":null,\"item_weight_units\":null,\"item_length\":null,\"item_width\":null,\"item_height\":null,\"item_dimensions_unit\":\"in\",\"is_private\":false,\"recipient\":null,\"occasion\":null,\"style\":null,\"non_taxable\":false,\"is_customizable\":false,\"is_digital\":true,\"file_data\":\"1 JPG\",\"language\":\"en-US\",\"has_variations\":false,\"taxonomy_id\":733,\"taxonomy_path\":[\"Craft Supplies & Tools\",\"Scrapbooking Supplies\",\"Scrapbooking Clip Art\"],\"used_manufacturer\":false}"}
  let(:data) {JSON.generate({results: [
    {quantity: 4},
    {quantity: 2}
  ]})}

  subject(:data_filter) { described_class.new(data) }

  # it 'should output a json object' do
  #   data_filter.highest_price
  #   expect(data_filter.add).to eq(50100)
  # end

  context '#average_quantity' do

    it 'should return the average quantity' do
      expect(data_filter.average_quantity).to eq 3
    end

  end

  # it 'should output a json object' do
  #   expect(data_filter.lowest_price).to eq(50100)
  # end




end
