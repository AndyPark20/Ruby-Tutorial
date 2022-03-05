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

puts "First Input: "
text =gets.chomp
puts "Second Input: "
redact = gets.chomp

words = text.split("")

words.each do |x|
  puts "Each letters are #{x}"
  end

