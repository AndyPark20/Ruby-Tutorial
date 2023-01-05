$USERS =[
  { username:'andy', password:'password1' },
  { username:'Lewis', password:'password2' },
  { username:'Lance', password:'password3' },
  { username:'Mick', password:'password4' },
]

def initial_prompt
  print "Please press N to exit out or press y to continue:"
  user_input = gets.chomp.downcase

end

def get_credentials
  print "Please enter username:"
  user_username = gets.chomp
  user_password = nil

  if user_username
    print "Please enter password:"
    user_password = gets.chomp
    validate_credentials(user_username, user_password)
  end
end

def validate_credentials(username, password)
    found_user = $USERS.select { |user_info| user_info[:username] == username && user_info[:password] == password }
    if found_user.length !=0
      print "Welcome back #{ found_user[0][:username] }"
    else
      puts "Sorry credentials invalid"
      get_credentials
    end
end



def initiate_prompt
  while initial_prompt != 'y'
    initial_prompt
  end
  get_credentials
end

initiate_prompt
