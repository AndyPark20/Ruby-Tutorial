$dial_book = {
  newyork: "212",
  newbrunswick: "732",
  salinas: "831",
  irvine: "949",
  sanjose: "408",
  fremont: "510"
}



def get_city_names()
  list_city = $dial_book.keys
  puts list_city
  puts "Enter your city:"
  user_city_choice =gets.chomp.downcase
  if user_city_choice
    get_area_code(user_city_choice)
  end
end

def get_area_code(user)
  puts $dial_book[user.to_sym]
end

loop do
  print "Do you want to lookup an area code based on a city name?(Y/N):"
  user_response = gets.chomp.downcase
  case
  when user_response != 'y'
    puts "Have a great day!"
    break
  else
    puts "Which city would you like to view area code for?"
    get_city_names
  end
end
