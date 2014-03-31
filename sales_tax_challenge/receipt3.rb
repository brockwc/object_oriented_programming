require './item.rb'

import_perf = Imported.new(27.99, "imported bottle of perfume")
bot_perfume = Item.new(18.99, "bottle of perfume")
pills = Tax_exempt.new(9.75, "packet of headache pills")
import_choc = Imported.new(11.25, "box of imported choclates")

def receipt(*item)
  total = 0
  sales = 0
  items.each do |item|
    if item.class == Imported
      puts "1 #{item.name}: #{item.duty + item.sales_tax}"
      total += (item.duty) + item.sales_tax
      sales += item.sales_tax
    elsif item.class == Tax_exempt
      puts "1 #{item.name}: #{item.duty}"
      total += (item.duty) + item.sales_tax
      sales += item.sales_tax
    else
      puts "1 #{item.name}: #{item.tax}"
      total += item.tax
      sales += item.sales_tax
    end
  end
  puts "Sales Taxes: #{sales.round(2)}"
  puts "Total: #{total.round(2)}"
end

receipt(import_perf,bot_perfume,pills,import_choc)
