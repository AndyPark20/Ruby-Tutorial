=begin
This is going to be a re run on what I learned on basic syntax and couple string methods for Ruby
This exercise will ask for the users information
=end


# print "What is your first name: "
# my_name = gets.chomp.capitalize!

# print "What is your last name: "
# last_name =gets.chomp.capitalize!

# print "which city are you from: "
# city = gets.chomp.capitalize!

# print "which state are you from:"
# state= gets.chomp.capitalize!

# print "Your full name is #{my_name} #{last_name} and currently lives in #{city}, #{state} "



# for number in 1..4
#   print "the numbers are #{number} \n"
# end



# print "Please enter your name: "
# my_name =gets.chomp

# if my_name.include? "andy"
#     my_name.gsub!(/an/, "Fan")
# end

# print "final name after revision #{my_name}"



# i=0
# while i<10 do
#     i+=1
#     puts "Hello world"
#     if i == 2
#         puts "skipping #{i}"
#         next
#     end
# end


=begin
Split method
=end


# print "Please enter your first name"
# name = gets.chomp

# name_array =name.split('')
# puts name_array

# puts "First Input: "
# text =gets.chomp
# puts "Second Input: "
# redact = gets.chomp

# words = text.split("")

# words.each do |x|
#   puts "Each letters are #{x}"
#   end

# fruits = ["Banannas", "Apples", "Pears","Salmon"]

# fruits.each do |x|
#   if x == "Salmon"
#     fruits.replace(x,"Peaches")
#   end
#   puts x
# end


# print "Please enter your first name: "
# first_name =gets.chomp
# first_name.downcase!

# if first_name == 'andy'
#   first_name.gsub!(/an/, "Pa")
# else
#   print "capital not found"
# end

#   print "your final name is #{first_name}"

=begin
Ask the user for input
and depending on the number check print out comments
=end

# print "Please enter a number: "
# number = Integer(gets.chomp)

# if number == 1
#   puts "your number is equal to one"
# elsif number > 1 && number <8
#   puts "your number is between 2 and 8"
# else number
#   puts "your number is out of range"
# end


#-------------------------------------------------------------
# creating objects in Ruby (Hashes)
#  my_object = {
#    "name" => "andy",
#    "location" =>"USA",
#   "Ruby"=>true
#  }

#  pets = Hash.new

#  #add hash key/value pair using Hash.new
# pets["solo"] = "dog"
 
# print pets

#--------------------------------------------
#loop thru objects or arrays to get values
#array of array
# fruits = [["apples","pears"], ["oranges", "peaches"]]

# fruits.each do |x|
#   x.each do |y|
#     puts y
#   end
# end


#loop thru objects to get key value pair

# secret_identities = {
#   "The Batman" => "Bruce Wayne",
#   "Superman" => "Clark Kent",
#   "Wonder Woman" => "Diana Prince",
#   "Freakazoid" => "Dexter Douglas"
# }

# secret_identities.each do |x,y|
#   puts "#{x}: #{y}"
# end

#Palindromes

print "Please enter your name: "
name = gets.chomp

array_name =name.split("").reverse!
reversed_name_string =""

array_name.each do |x|
  reversed_name_string+=x
end

if reversed_name_string == name 
  print "Palindroms found!"
else
  print "Sorry, the string is not a palindrome"
end
