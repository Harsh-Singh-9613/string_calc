require 'rspec'
require_relative '../calculator'

RSpec.describe StringCalculator do
  it "returns 0 for an empty string" do
    calculator = StringCalculator.new
    expect(calculator.add("")).to eq(0)
  end

  it "returns the same number for a single number input" do
    calculator = StringCalculator.new
    expect(calculator.add("1")).to eq(1)
  end

  it "returns the sum of two numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2")).to eq(3)
  end
end