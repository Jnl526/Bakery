class Bakery
  attr_accessor :cakes, :cookies, :muffins, :bakery  
  def initialize
      @cakes = []
      @cookies = []
      @muffins = []
      @bakery = bakery
  end

# add pastry types into it's own hash in bakery
def addPastry(pastry)
  case pastry.type
    when 'cake'
      #Push pastry object into cake hash
      @cakes.push(pastry)
    when 'cookie'
      #Push pastry object into cookie hash
      @cookies.push(pastry)
      when 'muffin'
        #Push pastry object into muffins hash
        @muffins.push(pastry)
    end
  end

end

class Pastry
  attr_accessor :type, :name, :image, :price, :description
  def initialize(type, name, image, price, description)
    @type = type
    @name = name
    @image = image
    @description = description
    @price = price
  end

end

