
 #Feature 1:
 #This feature will allow user to either sign up for an account.
 #Or log in with their last name,last 4 digits of their social security number, and password.        



#class for log in and sign up method
class Account

    USER_INFO=[
        {first: 'andy', last: 'park', password: 'hello123', ssn: '123456789'},
        {first: 'Jason', last: 'kim', password: 'bye123', ssn: '135791098'},
    ]

  #If attribute doesn't need to be edited after being initialized, only use reader
    attr_reader :last_name, :password, :ssn

    def initialize(first_name,last_name, password, ssn)
        @first_name = first_name
        @last_name = last_name
        @password = password
        @ssn = ssn
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
end


#############################################
######### Main program starts here!##########
#############################################
puts "Welcome to Bank of Invoca!"
print "Are you an existing user?(Y/N):"
existing_new_user = gets.chomp.downcase

def self.new_or_existing_user(user_response)
    case user_response
    when 'y'
        #Ask for credentials that will be used to validate sign in

        print "Please enter your last name:"
        user_last_name_input = gets.chomp.downcase

        print "Please enter your password:"
        user_password_input = gets.chomp.downcase

        print "Please enter the last 4 digits of your SSN:"
        user_ssn_input = gets.chomp.downcase

        instance_for_log = Account.new(nil,user_last_name_input, user_password_input, user_ssn_input)
        instance_for_log.validate_log_in_credentials
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
        instance_new_user= Account.new(user_first_name_input, user_last_name_input, user_password_input, user_ssn_input)
        instance_new_user.add_new_user

    else
        print "Please re-enter Y or N:"
        $existing_new_user = gets.chomp.downcase
        new_or_existing_user($existing_new_user)
    end
end 




new_or_existing_user(existing_new_user) 

