# Feature 1:
# This feature will allow user to either sign up for an account.
# Or log in with their last name,last 4 digits of their social security number, and password.        
# class for log in and sign up method
class Account
  USER_INFO =
      [{first: 'andy', last: 'park', password: 'hello123', ssn: '123456789', balance: 20}, 
       {first: 'Jason', last: 'kim', password: 'bye123', ssn: '135791098'}
      ]
  
# If attribute doesn't need to be edited after being initialized, only use reader
  attr_reader :first_name, :last_name, :password, :ssn, :deposit_amount
  
      def initialize(first_name,last_name, password, ssn, deposit_amount)
          @first_name = first_name
          @last_name = last_name
          @password = password
          @ssn = ssn
          @deposit_amount = deposit_amount
      end
  
      #Method to check if the users credential exist in the USER_INFO array of objects
      def validate_log_in_credentials
          user_found = USER_INFO.find {|user| user[:last].to_s == @last_name && user[:password] == @password && user[:ssn][-4..-1] == @ssn}
          if user_found 
              puts "Welcome back #{user_found[:first]} #{user_found[:last]}!"
          else
            puts "Access Denied!"
            new_or_existing_user('y')
          end
      end
  
      #Method to push new user information into USER_INFO array of objects
      def add_new_user
          USER_INFO.push({first: @first_name, last: @last_name, password: @password, ssn: @ssn})
          print "Welcome #{@first_name} #{@last_name} to Bank of Invoca!"
      end

      def deposit
        print "depositing!"
       
       USER_INFO.map do |user|
            if user[:ssn][-4..-1] == @ssn
                # assign current balance to a variable
                deposit_integer = @deposit_amount.to_i
                user[:balance] = user[:balance] +  deposit_integer
                puts "Your total balance is $#{user[:balance]}"
                puts "master file: #{USER_INFO}"
            end
       end
      end
  end
  
  
  #############################################
  ######### Main program starts here!##########
  #############################################
  puts "Welcome to Bank of Invoca!"
  print "Are you an existing user?(Y/N):"
  existing_new_user = gets.chomp.downcase
  
  
  # Method to determine if the user is new or existing customer
  def new_or_existing_user(user_response)
      case user_response
      when 'y'
          #Ask for credentials that will be used to validate sign in
  
          print "Please enter your last name:"
          user_last_name_input = gets.chomp.downcase
  
          print "Please enter your password:"
          user_password_input = gets.chomp.downcase
  
          print "Please enter the last 4 digits of your SSN:"
          user_ssn_input = gets.chomp.downcase
  
          instance_for_log = Account.new(nil,user_last_name_input, user_password_input, user_ssn_input, nil)
          instance_for_log.validate_log_in_credentials

    

        existing_bank_user_functionality(nil,user_last_name_input, user_password_input, user_ssn_input)

      when 'n'
          print "Please enter your first name:"
          user_first_name_input = gets.chomp
          print "Please enter your last name:"
          user_last_name_input = gets.chomp
          print "Please enter your password:"
          user_password_input = gets.chomp
          print "Please enter your 8 digit SSN number:"
          user_ssn_input = gets.chomp
  
          ##Check to see if user_ssn_input is 8 digits
          while user_ssn_input.length.to_i <8
              print "Please re-enter your 8 digit SSN:"
              user_ssn_input= gets.chomp
          end 
  
          ##If user_ssn_input is 8 digits, call add_new_user method from Account instance
          instance_new_user= Account.new(user_first_name_input, user_last_name_input, user_password_input, user_ssn_input, nil)
          instance_new_user.add_new_user
  
      else
          print "Please re-enter Y or N:"
          $existing_new_user = gets.chomp.downcase
          new_or_existing_user($existing_new_user)
      end
  end


  #Bank Functionality
  def existing_bank_user_functionality(first_name,last_name, password, ssn)

    print "What would you like to do?"
    puts "Please select from the following options:"
    puts "- 1 for deposit"
    puts "- 2 for withdraw"
    puts "- 3 for transfer"
    user_function_input = gets.chomp

    case user_function_input
        when '1' 
            print "how much would you like to deposit?"
            deposit_amount = gets.chomp

            instance_existing_user = Account.new(first_name,last_name, password, ssn, deposit_amount)

            instance_existing_user.deposit
    end
  end
  
  new_or_existing_user(existing_new_user) 
  
  