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