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

# array =[5,4,6,10]

# array << 2

# array.sort do |x,y|
#     x <=> y
# end

# puts array

# array =[1,2,3,4,5]

# revised_array = array.collect do |num| 
        
#     if num == 2 
#         num 
#     end
# end


# print revised_array


#procs

# array = [1,2,3,4,5]

# which_is_more_than_three = Proc.new {|x| x > 3}

# solution_array = array.select(&which_is_more_than_three)

# print solution_array.is_a? Array


#yields

# def greetings(name)
#     puts "Initializing..."
#     yield("Jennifer")
#     puts "Hello!"
#     yield(name)
#     puts "Custom Hello!"
# end

# greetings("Andy") {
#     |x| puts "Hello there #{x}"
# }

#yields

def addition(num)
    puts "Welcome to numbers addition!"
    yield(num)
    puts "Custom number"
    yield(15)
    puts "static number!"
end

addition(3){|x| puts x+30}