require 'line/point'

RSpec.describe Geometry::Point do

  context "Point Initialization" do
    it "should check if the point object is created" do
      expect { Geometry::Point.new(4, 5) }.to_not raise_error
    end
    it "should not raise error when negative coordinates are passed" do
      expect { Geometry::Point.new(-1, 4) }.to_not raise_error
    end
    it "should raise error when the coordinates are not numeric" do
      expect { Geometry::Point.new("1", 4) }.to raise_error("The coordinates must be numeric")
    end
  end

  context "Distance Calculation" do
    it "should calculate the distance when the points are the same" do
      expect(Geometry::Point.new(4, 5).distance_from(Geometry::Point.new(4, 5))).to eq(0.0)
    end
    it "should calculate the distance when the points have the same x coordinate" do
      expect(Geometry::Point.new(4, 5).distance_from(Geometry::Point.new(4, 7))).to eq(2.0)
    end
    it "should calculate the distance when the points have the same y coordinate" do
      expect(Geometry::Point.new(5, 5).distance_from(Geometry::Point.new(12, 5))).to eq(7.0)
    end
    it "should calculate the distance when the points have different coordinates" do
      expect(Geometry::Point.new(5, 9).distance_from(Geometry::Point.new(8, 13))).to eq(5.0)
    end
  end
end