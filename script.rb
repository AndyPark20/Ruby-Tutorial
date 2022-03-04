=begin
This is going to be a re run on what I learned on basic syntax and couple string methods for Ruby
This exercise will ask for the users information
=end


print "What is your first name: "
my_name = gets.chomp

print "What is your last name: "
last_name =gets.chomp

print "which city are you from: "
city = gets.chomp

print "which state are you from:"
state= gets.chomp

print "Your full name is #{my_name} #{last_name} and currently lives in #{city}, #{state}"
