require './bakery'

@bakery = Bakery.new

chocolate = Pastry.new('cake','Double Fudge', '/images/cakes/chocolate-cake.jpg', '$10', '  Rich, fudgy chocolate cake filled and frosted with our house chocolate buttercream. Double Chocolate')
@bakery.addPastry(chocolate)

red_velvet = Pastry.new('cake','Red Velvet', '/images/cakes/redvelvet-cake.jpg', '$10',  "The Most Amazing Red Velvet Cake recipe is moist, fluffy, and has the perfect balance between acidity and chocolate. ")
@bakery.addPastry(red_velvet)

sponge = Pastry.new('cake','Mascarpone Lemon Cake', '/images/cakes/sponge-cake.jpg', '$12', " Super fluffy and light and perfect for spring. It's topped with cream cheese frosting which gives it a rich decadence.")
@bakery.addPastry(sponge)

chocolate_chip = Pastry.new('cookie','Chocolate Chip', '/images/cookies/chocolate-chip.jpg', '$7',  "Super fluffy and light and perfect for spring. It's topped with cream cheese frosting which gives it a rich decadence.")
@bakery.addPastry(chocolate_chip)


almond = Pastry.new('cookie','Almond', '/images/cookies/almond.jpg', '$7', ' This Almond Cookie recipe is perfection! Super easy, chewy on the inside, crunchy on the outside')
@bakery.addPastry(almond)


amaretti = Pastry.new('cookie','Amaretti', '/images/cookies/amaretti.jpg', '$7', ' Amaretti are little cookies that are light as a feather, yet have an intense sweet almond flavor')
@bakery.addPastry(amaretti)

banana = Pastry.new('muffin','Banana Muffin', '/images/muffins/banana.jpg', '$3.50', ' Moist, tender banana muffins loaded with almonds and crowned with a sweet streusel topping.')
@bakery.addPastry(banana)

chocolate = Pastry.new('muffin','Banana Muffin', '/images/muffins/chocolate.jpg', '$3.50', ' These muffins are just .... nuts to these muffins! ')
@bakery.addPastry(chocolate)

cranberry = Pastry.new('muffin','Banana Muffin', '/images/muffins/cranberry.jpg', '$3.50',  "Utilizes fresh cranberries sweetened with sugar. It's a delicious breakfast for a fall morning")
@bakery.addPastry(cranberry)