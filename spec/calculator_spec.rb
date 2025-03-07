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

  it "returns the sum of multiple numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2,3,4")).to eq(10)
  end

  it "handles new lines as delimiters" do
    calculator = StringCalculator.new
    expect(calculator.add("1\n2,3")).to eq(6)
  end

  it "handles custom delimiters" do
    calculator = StringCalculator.new
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  it "raises an exception for negative numbers" do
    calculator = StringCalculator.new
    expect { calculator.add("1,-2,3") }.to raise_error("Negative numbers not allowed: -2")
  end

  it "returns 0 if invalid string passed" do
    calculator = StringCalculator.new
    expect(calculator.add("harsh")).to eq(0)
  end
end