require_relative 'spec_helper'
require_relative '../lib/calculator'

describe Calculator do
  before(:context) do
    # initialize calculator
    @my_calculator = Calculator.new(1)
  end

  # Tests go here
  describe "This is the initiailization part" do
    it "is an instance of the Calculator class" do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
  end

  # Test for results
  describe "This is to test the result method" do
    it "should return the current result" do
      expect(@my_calculator.result).to eq(1)
    end

    before(:context) do
      @my_calculator.result  = 2
    end

    it "current result must be read only" do
      expect(@my_calculator.result).to eq(1)
    end
  end
end
