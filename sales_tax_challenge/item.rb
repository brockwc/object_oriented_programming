class Item
  attr_accessor :name

  def initialize(price, name)
    @price = price
    @name = name
  end

  def tax(cost = 0)
    cost = @price + (@price * 0.10)
  end

  def sales_tax(sales = 0)
    sales = (@price * 0.10)
  end

end

class Tax_exempt < Item

  def tax
    cost = @price
  end

  def sales_tax
    cost = 0
  end

end

class Imported < Item

  def duty(cost = 0)
    cost = @price + (@price *0.05)
  end

  def sales_tax(sales = 0)
    sales = (@price *0.15)
  end

end
