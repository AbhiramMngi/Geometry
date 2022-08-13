require "line"
require "line/point"

RSpec.describe Geometry::Line do
  context "Line Initialisation" do
    it "should check id the Line object is created" do
      expect { Geometry::Line.new(Geometry::Point.new(1, 2), Geometry::Point.new(4, 6)) }.to_not raise_error
    end
    it "should raise error when point objects are not passed" do
      expect { Geometry::Line.new(Geometry::Point.new(1, 2), "p") }.to raise_error("objects passed to line must be point objects")
    end
    it "should not create a line when points are the same" do
      expect { Geometry::Line.new(Geometry::Point.new(1, 2), Geometry::Point.new(1, 2)) }.to raise_error("both points are the same")
    end
  end
end