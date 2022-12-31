#prompt user commands

print "What's your first name?"



=begin
Important!!!
gets is a Ruby method that gets response from the user
chomp removes the line
=end

print "What's your first name?"
user_response = gets.chomp

print "what is your last name?"
last_name = gets.chomp

print "what city are you from?"
city = gets.chomp

print "Which providence are you from?"
state = gets.chomp.upcase





#questions
#Re-visit chomp
#capitalize vs capitalize! (looks like if you DO NOT USE ! then it will make a copy of the variable and do the method)