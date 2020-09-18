class Calculator
  def addition
    puts "Add which numbers together?"
    @value1 = gets.chomp.to_i
    @value2 = gets.chomp.to_i
    @response = (@value1 + @value2)
  end

  def subtraction
    puts "Subtract which numbers from eachother?"
    @value1 = gets.chomp.to_i
    @value2 = gets.chomp.to_i
    @response = (@value1 - @value2)
  end

  def multiplication
    puts "Multiply which numbers together?"
    @value1 = gets.chomp.to_i
    @value2 = gets.chomp.to_i
    @response = (@value1 ** @value2)
  end

  def division
    puts "Divide which numbers from eachother?"
    @value1 = gets.chomp.to_i
    @value2 = gets.chomp.to_i
    @response = (@value1 / @value2)
  end
end

