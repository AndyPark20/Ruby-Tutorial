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

puts "How would you like to be greeted? "
answer = gets.chomp

def greetings(value)
    case value
    when "hello" then puts "Hello there!"
    when "goodbye" then puts "goodbye to you as well!"
    end
end

greetings(answer)