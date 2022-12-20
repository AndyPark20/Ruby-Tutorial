puts "Please enter the number the number you want to multiply by 2"
user_input = gets.chomp

def multiply(input)
  p input.to_i * 2
end

multiply(user_input)