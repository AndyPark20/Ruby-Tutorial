dial_book = {
  newyork: "212",
  newbrunswick: "732",
  salinas: "831",
  irvine: "949",
  sanjose: "408",
  fremont: "510"
}



def get_city_names(somehash)

end

def get_area_code(somehash,key)

end

loop do
  print "Do you want to lookup an area ccode based on a city name?(Y/N):"
  user_response = gets.chomp.downcase
  case
  when user_response != 'y'
    puts "Have a great day!"
    break
  else
    get_city_names
  end
end
