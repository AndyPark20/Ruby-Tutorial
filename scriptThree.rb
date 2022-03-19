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

# def addition(num)
#     puts "Welcome to numbers addition!"
#     yield(num)
#     puts "Custom number"
#     yield(15)
#     puts "static number!"
# end

# addition(3){|x| puts x+30}

#Proc

# array= [1,2,3,4,5]
# addition = Proc.new {|x| puts x+15}

# final_array = array.select(&addition)


#Proc vs #Bloc

#Proc --> Doesn't care about arguments and returns immediately by passing the control function

# def procing(name)
#     test = Proc.new {return "Hello #{name}"}
#     test.call
#     puts "Goodbye!"
# end


# def lambdaing(values)
#     testing =lambda {return "Hello #{values}"}
#     testing.call
#     puts "Goodbye!"
# end

# puts procing("Andy")
# puts lambdaing("Emily")



# #Classes

# class Andy 
#     def initialize(location, age, profession)
#         @location = location
#         @age = age
#         @profession = profession
#         puts @location
#     end
# end


# revised = Andy.new("usa",25, "engineer")


class Human
    @@person_tracked = {}

    def initialization(name,age,profession)
    @name = name
    @age = age
    @profression = profession
    puts "#{@name} is #{@age} and job is #{@profression}"
    end

    def habitat_traits(name,planet)
        @name = name
        @planet = planet
        @@person_tracked[@name] = @planet 
        print @@person_tracked
    end

end

class Invidial < Human
end

person = Invidial.new
person.habitat_traits("tony","avengers")








