class Calculator

  attr_reader :result
  # your class goes here
  attr_reader :result

  def initialize num
    @result = num
  end

  def result
    return @result
  end

end


p = Calculator.new(2)
