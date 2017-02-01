class Calculator

  # your class goes here
  attr_reader :result

  def initialize num
    @result = num
    @result_history = []
    @redo = []
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
        @result_history.push(@result)
      else
        return false
      end
      self
  end

  def sub num
    if num.is_a? Integer
     @result -= num
     @result_history.push(@result)
   else
     return false
   end
   self

  end

  def multiply num
    if num.is_a? Integer
     @result *= num
     @result_history.push(@result)
   else
     return false
   end
   self

  end

  def divide num
    if num.is_a? Integer
     @result /= num
     @result_history.push(@result)
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

  def undo
    @result = @result_history[@result_history.length-2]
    puts "@result_history before pushing and popping is: #{@result_history}"
    @redo.push(@result_history[@result_history.length-2])
    puts "@redo is: #{@redo}"
    @result_history.pop()
    puts "@result_history after popping is: #{@result_history}"
    self
  end

  def redo
    @result = @redo[@redo.length-2]
    @result_history.push(@result)
    @redo.pop()
    self
  end


end


p = Calculator.new(2)
