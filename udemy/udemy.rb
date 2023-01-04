

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

# x = (1..6).to_a
# puts "Before testing #{x}"
# puts "Add world at the first of the array #{x.unshift("world cup")}"
# puts "Add world at the end of the array #{x.append("world cup")}"
# puts "Strip duplicates #{x.uniq}"


# x =["Apples", "Berry", "Pears"]

# x.each do |x|
#   puts "first food is #{x}"
# end


#hashes

hash ={age:32, occupation:'SWE', favorite:'pizza' }

hash.each do |key, value|
  puts key
end

# revised_hash = hash.select {|key,value| hash.delete(value) if value.class == 'string'}

# puts revised_hash
