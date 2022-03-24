# class Dog
#     attr_reader :name
#     attr_writer :breed

#     def initialize(name, breed)
#         @name = name
#         @breed = breed
#     end
# end


# #Modules are like classes expcpt they cannot have subclasses or instances (are capitalized camel cases)

# module MyLibrary
# #CONTANTS are written in caps
# FAVE_BOOK = "I dont have ome"

# end

# module CalculateNumber
#     def add_it(num,numTwo)
#     puts num + numTwo
#     end
# end


# class Lets_Operate
# include CalculateNumber
# end


# kid = Lets_Operate.new

# kid.add_it(2,4)


# class Product

#     attr_accessor :name, :age

#    def initialize(name, age)
#     @name = name
#     @age = age
#    end

#    public
#    def info
#     print "#{@name} is #{age}"
#    end
# end


# instances = Product.new('andy',25)

# instances.info


print "what is your name?"
name = gets.chomp

puts name
