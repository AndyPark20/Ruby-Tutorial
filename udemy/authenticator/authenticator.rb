users =[
  {username:'andy', password:'password1'},
  {username:'Lewis', password:'password2'},
  {username:'Lance', password:'password3'},
  {username:'Mick', password:'password4'},
]

def initial_prompt
  print "Please press N to exit out or press ENTER to continue:"
  user_input = gets.chomp
end


def validate_user_prompt
  print initial_prompt
end

validate_user_prompt
