module Geometry
  class Line
    def initialize(point_1, point_2)
      if !(point_2.is_a?(Point) && point_1.is_a?(Point))
        raise("objects passed to line must be point objects")
      end
      if point_1.x == point_2.x && point_1.y == point_2.y
        raise("both points are the same")
      end
      @point_1 = point_1
      @point_2 = point_2
    end

    def calculate_length
      return @point_1.distance_from(@point_2)
    end
  end
end