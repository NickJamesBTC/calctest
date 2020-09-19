class Calculator
  def get_values(x)
    1.upto(x).map { |x|
      puts "Value ##{x}: "
      gets.chomp.to_i
    }
  end

  def operation
    %w(add subtract multiply divide)
  end

  def calc
    loop do
      puts "Would you like to #{operation.join(', ')} or quit?"
      response = gets.chomp
      puts "What are you trying to #{response}"
        if response == operation[0] then
          operator = :+
        elsif response == operation[1] then
          operator = :-
        elsif response == operation[2] then
          operator = :*
        elsif response == operation[3] then
          operator = :/
        else break
        end
      puts "How many values?"
      num_of_values = gets.to_i
      sum = get_values(num_of_values).inject(operator)
      puts "The total is #{sum.to_f}"
    end
  end
end
