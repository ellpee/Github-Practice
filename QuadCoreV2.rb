class Quadrilateral
    attr_reader :perimeter, :area
    def initialize (perimeter, area)
        @perimeter = perimeter
        @area = area
    end
    def perimeter
        perimeter = side_length + side_length + side_length + side_length
    end
    def area
        area = side_length * side_length
    end

end

class Rectangle < Quadrilateral
    attr_reader :side_length
    def initialize(side_length)
        @side_length = side_length
        end
end
class Square < Rectangle
    attr_reader :side_length
    def initialize(side_length)
        @side_length = side_length
        end

end
class Trapezoid < Quadrilateral
    attr_reader :side_length
    def initialize(side_length)
        @side_length = side_length
        end
end
class Rhombus < Trapezoid
    attr_reader :side_length
    def initialize(side_length)
        @side_length = side_length
        end
end

def test
  squa = Square.new(1)
  puts squa.perimeter == 4
  puts squa.area == 1
  puts squa.side_length == 1

  rhombi = Rhombus.new(8)
  puts rhombi.perimeter == 32
  puts rhombi.side_length == 8

  rec = Rectangle.new(6)
  puts rec.perimeter == 24
  puts rec.area == 36

  trap = Trapezoid.new(1)
  puts trap.perimeter == 4


end

test