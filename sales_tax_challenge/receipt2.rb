require './item.rb'

import_choc = Tax_exempt.new(10.00, "imported box of chocolates")
import_perf = Imported.new(47.50, "imported bottle of perfume")

def receipt(*item)
  total = 0
  sales = 0
  item.each do |item|
    puts "1 #{item.name}: #{item.duty + item.sales_tax}"
    total += (item.duty) + item.sales_tax
    sales += item.sales_tax
  end
  puts "Sales Taxes: #{sales.round(2)}"
  puts "Total: #{total.round(2)}"
end

receipt(import_choc,import_perf)



