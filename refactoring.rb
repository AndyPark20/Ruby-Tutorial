
# puts "Its True!" if true

# =begin
#     Same rule applies for Unless
# =end

# puts "Hello World" unless true

# puts 3<4 ? "Hello" : "Goodbyere"


# ##### Working on Case Statement
# puts "Hello there!"
# greeting = gets.chomp

# # Add your case statement below!
# case greeting
#   when "English"
#     puts "Hello!"
#   when "French"
#     puts "Bonjour!"
#   when "German"
#     puts "Guten Tag!"
#   when "Finnish"
#     puts "Haloo!"
#   else
#     puts "I dont' know that language!"
# end



my_array=[1,2,34,4,5,6]


my_array.each {|x| puts x % 2 ==0 ? x : "Not an even number!"}