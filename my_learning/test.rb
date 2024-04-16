# =begin
# small project to cover all method that has been learned for day1
# =end

# print "What is your first name?"
# user_first_name =gets.chomp
# user_first_name.upcase!
# print "Which state do you currently live in?"
# user_current_location = gets.chomp
# print "where do you want to live next year?"
# user_preferred_location = gets.chomp

# #Print out a summary for customer's confirmation
# print "Hi #{user_first_name}, you currently live in #{user_current_location}, however you want to move to #{user_preferred_location}, do you really want to move? (true/false)"
# user_confirmation = gets.chomp


# # unless user_confirmation
# #     print "Ok, we will cancel updating your residency, please try again later"
# # else
# #     user_current_location.gsub!(user_current_location,user_preferred_location)
# # end

# if !user_confirmation && user_current_location
#     print "Ok, we will cancel updating your residency, please try again later"

# else
#     user_current_location.gsub!(user_current_location,user_preferred_location)
    
# end

# print "Dear #{user_first_name}, we have successfully updated your residency to #{user_current_location}"



# my_object = Hash.new
# my_empty_object ={}

# puts my_object === my_empty_object
# puts "my_object_id: #{my_object.object_id}"
# puts "my_empty_object: #{my_empty_object.object_id}"




#  def doesItInclude(param, variable)
#   if param.include? variable
#     print "It does include #{variable}"
#   end
#  end

#  doesItInclude("Hello", "H")

# def yield_name(name)
#   puts "This is the top of the method"
#   yield("Jenny")
#   puts "<<<this is the middle section>>>"
#   yield(name)
#   puts "this is the bottom end!"
# end

# yield_name("andy") {|x| puts "My name is #{x}"}


#Procs
# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]


# round_down = Proc.new {|x| x.floor}

# ints = floats.map!(&round_down)

# puts ints

# floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]


# floats.each do |x|
#   puts "x is #{xru}"
# end

# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

# group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
# group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
# group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# # Complete this as a new Proc
# over_4_feet = Proc.new {|x| x >=4}

# # Change these three so that they use your new over_4_feet Proc
# can_ride_1 = group_1.select!(&over_4_feet)
# can_ride_2 = group_2.select!(&over_4_feet)
# can_ride_3 = group_3.select!(&over_4_feet)

# puts can_ride_1
# puts can_ride_2
# puts can_ride_3

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}


# # def loop_over(object)
# #   object.map do |x,y|
# #     puts "Values from using define: #{y}"
# #   end
# # end

# # loop_over(crew)


# create_lambda = lambda {|x,y| puts "Value from using lamda #{y}"}

# crew.map do |x,y|
#   create_lambda.call(x,y)
# end


# def print_full_name(first_name, last_name)
#     name = first_name + ' ' + last_name
#     puts name
#     #Name is scoped within this function
# end


# print_full_name('karen', 'lee') # karen lee
# print_full_name('bomey', 'lee') # bomey lee
# puts name # kim


# name ="andy"

# def local_scope 
#   name ="Jason"
# end

# puts "name from define: #{name}"

# 3.times do |x|
#   name ="jason"
# end

# puts "name from block #{name}"

# create_lambda = lambda {|x| puts x}


#How to create an instance of an object

# class Person
#   def initialize(name)
#     @name = name
#   end
# end


# copy = Person.new("Yukihiro")

# $age =18
# class My_class
#   $age = 29
# end

# puts $age


# class ErrorMessage
#   def display_it
#     puts "Error Error!"
#   end
# end




# copyError = ErrorMessage.new
# # copyError.display_it



# class Car 
#   #Only scoped to the class Car
#   def initialize(make, model)
#     @make=make
#     @model=model
#   end

#   def warranty
#       puts "Please enter your year"
#       @user_year = gets.chomp
#   end

# end


# class Mercedes < Car
#     def warranty
#       super
#       puts @user_year >=15 ? "Sorry your warranty expired on your #{@make} #{@model}" : "Please take to the nearest authorized dealership #{@make} #{@model}"
#     end
# end


# puts "Please enter your make:"
# user_make = gets.chomp
# puts "Please enter your model:"
# user_model = gets.chomp


# Car(user_make, user_model)

# puts Mercedes.new.warranty


