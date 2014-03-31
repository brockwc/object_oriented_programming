require './item.rb'

book = Tax_exempt.new(12.49, "book")
music_CD = Item.new(14.99, "music CD")
chocolate_bar = Tax_exempt.new(0.85, "chocolate bar")

def receipt(*item)
  total = 0
  sales = 0
  item.each do |item|
    puts "1 #{item.name}: #{item.tax}"
    total += item.tax
    sales += item.sales_tax
  end
  puts "Sales Tax: #{sales.round(2)}"
  puts "Total: #{total.round(2)}"
end

receipt(book,music_CD,chocolate_bar)