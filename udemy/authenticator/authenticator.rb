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

    print "You have entered username: #{user_username} and password: #{user_password}"
  end
end



def validate_user_prompt
  case initial_prompt
    when 'n'
      get_credentials
    when ''
      puts 'bye'
  end
end

validate_user_prompt
