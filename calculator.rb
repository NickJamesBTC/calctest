def get_values(x)
  1.upto(x).map { |x|
    puts "Value ##{x}: "
    gets.chomp.to_f
  }
end

def operation
  %w(add subtract multiply divide exponent)
end

def calc
  loop do
  puts "\nWould you like to #{operation.join(', ')} or quit?"
  response = gets.chomp
  puts "\nHow many values are you trying to #{response}?"
    if response == operation[0] then
      operator = :+
    elsif response == operation[1] then
      operator = :-
    elsif response == operation[2] then
      operator = :*
    elsif response == operation[3] then
      operator = :/
    elsif response == operation[4] then
      operator = :**
    else
      break
    end
  num_of_values = gets.to_i
  sum = get_values(num_of_values).inject(operator)
  puts "The total is #{sum}"
  end
end
