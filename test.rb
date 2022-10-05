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


books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

print books.sort!