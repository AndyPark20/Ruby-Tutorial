

print "Please enter a number to play with:"
user_input = gets.chomp

def integer_value_checker(value)
  if value.to_i < 3
    integer_calculator
  else
    print "Value is greater than the requirement"
  end
end


def integer_calculator
  print "Method here"
end

integer_value_checker(user_input)
