require './item.rb'

book = TaxExempt.new(12.49, "book")
music_CD = Item.new(14.99, "music CD")
chocolate_bar = TaxExempt.new(0.85, "chocolate bar")

cart1 = Cart.new(book,music_CD,chocolate_bar)
cart1.receipt

import_choc = ImportedExempt.new(10.00, "imported box of chocolates")
import_perf = Imported.new(47.50, "imported bottle of perfume")

cart2 = Cart.new(import_choc,import_perf)
cart2.receipt

import_perf = Imported.new(27.99, "imported bottle of perfume")
bot_perfume = Item.new(18.99, "bottle of perfume")
pills = TaxExempt.new(9.75, "packet of headache pills")
import_choc = ImportedExempt.new(11.25, "box of imported choclates")

cart3 = Cart.new(import_perf,bot_perfume,pills,import_choc)
cart3.receipt