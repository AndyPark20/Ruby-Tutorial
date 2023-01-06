$dial_book = {
  newyork: "212",
  newbrunswick: "732",
  salinas: "831",
  irvine: "949",
  sanjose: "408",
  fremont: "510"
}



def get_city_names()
  $dial_book.each do |city_name, area_code|
    puts city_name
  end
end

def get_area_code(user)

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
    puts get_city_names
    user_city_choice = gets.chomp.downcase
  end
end
