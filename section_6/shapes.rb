class Shape
  def name
    puts self.class
  end
end

module SquarePerimeter
  def calculate(side1, side2)
    2*(side1 + side2)
  end
end

class Oval < Shape

end

class Rectangle < Shape
  include SquarePerimeter
end

class Circle < Shape
  def calculate(pi, r)
    pi *(r^2)
  end
end

class Square < Shape
  include SquarePerimeter

  def area
    #side*side
  end
end

square = Square.new
square.name
puts square.calculate(2, 2)

rectangle = Rectangle.new
rectangle.name
puts rectangle.calculate(2, 4)

circle = Circle.new
circle.name
puts circle.calculate(3.14, 5)
