

# print "Please enter a number to play with:"
# user_input = gets.chomp

# def integer_value_checker(value)
#   if value.to_i < 3
#     integer_calculator
#   else
#     print "Value is greater than the requirement"
#   end
# end


# def integer_calculator
#   5.times{print "hello world"}
# end

# integer_value_checker(user_input)


# Arrays

x = 1..5
x
puts "Before Adding #{x}"
y = x.to_a << 10
puts "After adding #{y}"
z = x.to_a.unshift("World Cup")
print z
