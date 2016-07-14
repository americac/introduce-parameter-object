class Package
  attr_reader :height, :length, :weight, :width, :express
  def initialize(height, length, weight, width, express=nil)
    @height = height
    @length = length
    @weight = weight
    @width = width
    @express = express
  end
end
