class Calculator

  # your class goes here
  attr_reader :result

  def initialize num
    @result = num
    @result_history = []
  end

  def result
    return @result
  end

  def reset num
    @result = num
  end

  def add num

       if num.is_a? Integer
        @result += num
      else
        return false
      end
      self
  end

  def sub num
    if num.is_a? Integer
     @result -= num
   else
     return false
   end
   self

  end

  def multiply num
    if num.is_a? Integer
     @result *= num
   else
     return false
   end
   self

  end

  def divide num
    if num.is_a? Integer
     @result /= num
   else
     return false
   end
   self
  end

  def operation action, num
    case action
    when 'add'
      add num
    when 'sub'
      sub num
    when 'multiply'
      multiply(num)
    when 'divide'
      divide num
    else
      return "Please enter a valid operation"
    end
  end



end


p = Calculator.new(2)
