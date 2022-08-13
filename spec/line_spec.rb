require "line"
require "line/point"

RSpec.describe Geometry::Line do
  context "Line Initialisation" do
    it "should check if the Line object is created" do
      expect { Geometry::Line.new(Geometry::Point.new(1, 2), Geometry::Point.new(4, 6)) }.to_not raise_error
    end
    it "should raise error when point objects are not passed" do
      expect { Geometry::Line.new(Geometry::Point.new(1, 2), "p") }.to raise_error("objects passed to line must be point objects")
    end
    it "should not create a line when points are the same" do
      expect { Geometry::Line.new(Geometry::Point.new(1, 2), Geometry::Point.new(1, 2)) }.to raise_error("both points are the same")
    end
  end
  context "Length Calculation" do
    it "should check if the length is non-negative" do
      line = Geometry::Line.new(Geometry::Point.new(1, 2), Geometry::Point.new(1, 4))
      expect(line.calculate_length).to be >= 0.0
    end
    it "should check if the length is correct" do
      line = Geometry::Line.new(Geometry::Point.new(3, 2), Geometry::Point.new(7, 5))
      expect(line.calculate_length).to eq(5.0)
    end
  end
end