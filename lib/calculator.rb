class Calculator

  # your class goes here
  attr_reader :result

  def initialize num
    @result = num
  end

  def result
    return @result
  end

  def reset num
    @result = num
  end

  def add num
     (num.is_a? Integer)?  @result += num : false
  end
end


p = Calculator.new(2)
