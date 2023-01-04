users =[
  {username:'andy', password:'password1'},
  {username:'Lewis', password:'password2'},
  {username:'Lance', password:'password3'},
  {username:'Mick', password:'password4'},
]

def initial_prompt
  print "Please press N to exit out or press ENTER to continue:"
  user_input = gets.chomp.downcase
end

def get_credentials
  print "Please enter username:"
  user_username = gets.chomp
  user_password = nil

  if user_username
    print "Please enter password:"
    user_password = gets.chomp
  end
end

def validate_credentials(username, password)

end


def validate_user_prompt

  case initial_prompt
    when 'n'
      get_credentials
    when ''
      initial_prompt
  end
end

validate_user_prompt
