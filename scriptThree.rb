#Review Objects and hashing keys

# andy ={
#     "age" => 26,
#     "profession" => "engineer",
#     "food" => "pizza"
# }

#Change the strings into symbol

# andy ={
#     age: 26,
#     profession: "engineer",
#     food: "pizza"

# }

# #add key/values
# andy[:sport] = "f1 racing"

# #delete key/values
# andy.delete(:age)

# puts andy


#define a function and depending on the input number output a value

# puts "How would you like to be greeted? "
# answer = gets.chomp

# def greetings(value)
#     case value
#     when "hello" then puts "Hello there!"
#     when "goodbye" then puts "goodbye to you as well!"
#     end
# end

# greetings(answer)


#square root the number and check if the value is equal to 4, return all tested logic

# array= [5,4,6,2,1]

# def check_number(number)
#     mapped =number.map do |x|
#         if x * x == 4
#          x
#         end
#     end
#     print mapped
# end


# check_number(array)

array =[5,4,6,10]

array.sort! do |x,y|
    y <=> x
end

puts array

