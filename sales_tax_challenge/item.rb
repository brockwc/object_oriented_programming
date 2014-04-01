class Item
  attr_accessor :name, :price

  def initialize(price, name)
    @price = price
    @name = name
  end

  def tax
    @price * 0.10
  end

end

class TaxExempt < Item

  def tax
    0
  end

end

class Imported < Item

  def tax
    @price * 0.15
  end

end

class ImportedExempt < Item

  def tax
    @price * 0.05
  end

end

class Cart

  def initialize(*items)
    @items = items
  end

  def receipt
    total = 0
    total_tax = 0
    @items.each do |item|
      puts "1 #{item.name}: #{item.tax + item.price}"
      total += item.tax + item.price
      total_tax += item.tax
    end
    puts "Sales Tax: #{total_tax.round(2)}"
    puts "Total: #{total.round(2)}"
  end

end