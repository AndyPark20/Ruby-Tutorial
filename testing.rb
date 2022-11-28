print "Hello what is your name?"
user_info = gets.chomp

r

$master_file = ["andy", "jason"]

def find_user
  $master_file.find do |user|
    if users == user_info
      print "welcome #{user}"
  end
end

find_user