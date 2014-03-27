class Item
  attr_accessor :price, :name, :imported, :tax_exempt

  def initialize(price, name, imported, tax_exempt)
    @price = price.to_f
    @name = name
    @imported = imported
    @tax_exempt = tax_exempt
  end

end

