class Calculator
  # your class goes here
  attr_reader :result

  def initialize num
    @result = num
  end

end


p = Calculator.new(2)
