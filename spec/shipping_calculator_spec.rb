require 'spec_helper'

describe ShippingCalculator, '#calculate_cost' do
  it 'determines the cost of normal shipping' do
    height = 4.0
    length = 3
    weight = 50
    width = 2.5
    expected_cost = 618.44

    package = Package.new(height, length, weight, width)
    calculator =  ShippingCalculator.new
    cost = calculator.calculate_cost(package)

    expect(cost).to eq expected_cost
  end

  it 'determines the cost of express shipping' do
    height = 4.0
    length = 3
    weight = 50
    width = 2.5
    expected_cost = 1914.41

    package = Package.new(height, length, weight, width, true)
    calculator =  ShippingCalculator.new
    cost = calculator.calculate_cost(package)

    expect(cost).to eq expected_cost
  end
end
