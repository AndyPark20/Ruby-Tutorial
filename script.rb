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

#terminal working

print "Please enter a number: "
number = Integer(gets.chomp)

if number == 1
  puts "your number is equal to one"
elsif number > 1 && number <8
  puts "your number is between 2 and 8"
else number
  puts "your number is out of range"
end
