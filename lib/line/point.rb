module Geometry
  class Point
    attr_reader :x, :y

    def initialize(x, y)
      if !(x.is_a?(Numeric) && y.is_a?(Numeric))
        raise("The coordinates must be numeric")
      end
      @x = x
      @y = y
    end

    def distance_from(other_point)
      if other_point.x == @x && other_point.y == @y
        return 0.0
      end
      if other_point.x == @x
        return (@y - other_point.y).abs
      end
      if other_point.y == @y
        return (@x - other_point.x).abs
      end
      x_difference = (@x - other_point.x).abs
      y_difference = (@y - other_point.y).abs
      return (x_difference ** 2 + y_difference ** 2) ** 0.5
    end
  end
end