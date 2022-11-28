print "Hello what is your name?"
user_info = gets.chomp


master_file = ["andy", "jason"]

def find_user(user_list, customer)
  user_list.find do |user|
    if user == customer
      print "welcome #{user}"
      break
    else
      print "Sorry we couldn't find that user"
      break
    end
  end
end

find_user(master_file, user_info)

