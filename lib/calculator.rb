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
    self.result = num
  end

  def add num
     (num.is_a? Integer)?  self.result += num : false
     self
  end

  private

  attr_writer :result

end


p = Calculator.new(2)
