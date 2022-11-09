# Feature 1:
# This feature will allow user to either sign up for an account.
# Or log in with their last name,last 4 digits of their social security number, and password.

# Create a class that manages all Accounts

# 1. Sign up (new User)
# 2. Log in (Validation existing user)

# 3. Deposit
# 4. Withdrawal
# 5. Transfer different accounts

# 6. Edit personal information (ie phone number, address, etc...)
# 7. Close accounts


class CustomerFunction
  def deposit
  end

  def Withdrawal
  end

  def Transfer
  end
end

class SystemFunction
  def add_new_user(_first_name, _last_name, _password, _ssn)
    @user_info_list.push({ first: @first_name, last: @last_name, password: @password, ssn: @ssn })
  end

  def verify_credentials

  end

end

class MasterAccount
  def initialize
    @user_info_list = [
      { first: 'andy', last: 'park', password: 'hello123', ssn: '123456789', balance: 20 },
      { first: 'Jason', last: 'kim', password: 'bye123', ssn: '135791098', balance: 10 }
    ]
  end
end

class UserAccount < SystemFunction

  attr_accessor :first_name, :last_name, :password, :ssn

  def initialize(first_name, last_name, password, ssn)
    @first_name = first_name
    @last_name = last_name
    @password = password
    @ssn = ssn
  end
end

#############################################
######### Main program starts here!##########
#############################################

puts 'Welcome to Bank of Invoca!'
print 'Are you an existing user?(Y/N):'
existing_new_user = gets.chomp.downcase

def new_or_existing_user(user_response)
  case user_response
  when 'y'
    # Ask for credentials that will be used to validate sign in

    print 'Please enter your last name:'
    user_last_name_input = gets.chomp.downcase

    print 'Please enter your password:'
    user_password_input = gets.chomp.downcase

    print 'Please enter the last 4 digits of your SSN:'
    user_ssn_input = gets.chomp.downcase

    instance_user_account =UserAccount.new(nil, user_last_name_input, user_password_input, user_ssn_input)


    

  when 'n'
    print 'Please enter your first name:'
    user_first_name_input = gets.chomp
    print 'Please enter your last name:'
    user_last_name_input = gets.chomp
    print 'Please enter your password:'
    user_password_input = gets.chomp
    print 'Please enter your 8 digit SSN number:'
    user_ssn_input = gets.chomp

    # #Check to see if user_ssn_input is 8 digits
    while user_ssn_input.length.to_i < 8
      print 'Please re-enter your 8 digit SSN:'
      user_ssn_input = gets.chomp
    end

    #If user_ssn_input is 8 digits, call add_new_user method from Account instance
   inst_user_account=UserAccount.new(user_first_name_input, user_last_name_input, user_password_input, user_ssn_input)
  

  else
    print 'Please re-enter Y or N:'
    $existing_new_user = gets.chomp.downcase
    new_or_existing_user($existing_new_user)
  end
end

# new_or_existing_user(existing_new_user)
instance = MasterAccount.new
puts instance.render_master_account
