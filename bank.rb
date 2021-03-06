=begin
 1. Objective: User can access their bank account with username and password and allows users to
    deposit, withdrawl, and check their balance

=end

#Create class that acts a bank
#Has information about username + password
#balance information


class Bank
    @@bank_customer = [

        {name:'Andy',username:"ruby123", password:"hello123", balance:500},
        {name:'Jennifer', username:"javascript123",password:"goodbye123", balance:123_456_123}
    ]

    #Credentials Check
    @@account_credential_check =false
    #name of the account
    @@name = ""
    #options that user wants to chose withdrawl/deposit
    @@user_selection=""

    def initialize(username, password)
        @username = username
        @password = password
    end

    #Check user credentials
    private
    def check_credentials
        @@bank_customer.each do |x|
           if ((x[:username]== @username) && (x[:password] == @password))
            @@account_credential_check = true;
            @@name =x[:name]
           end 
        end
    end

    #Return results from checking user credentials
    public
    def credential_notification
        check_credentials()
       
        #Check if the credentials are correct
       puts @@account_credential_check ? "Welcome #{@@name}!" : "Invalid Login!"
    end

    #Options user can choose after credentials has been cleared
    public
    def options
        credential_notification()
        if @@account_credential_check
            print "What would you like to do?"
            @@user_selection = gets.chomp
        end
    end

    #Options functionality
    public 
    def options_functions
        options()
        if @@user_selection == 'check balance'
            @@bank_customer.each do |x|
                if x[:name] == @@name
                    puts "Your Current Balance is: $#{x[:balance]}"
                end
            end
        elsif @@user_selection == 'deposit'
            puts "How much do you want to deposit?"
            @deposit_amount =gets.chomp

            @@bank_customer.each do |x|
                if x[:name] == @@name
                    puts "Your Balance is now $#{x[:balance] + @deposit_amount.to_i}"
                end
            end
        elsif @@user_selection == 'withdrawl'
            puts "How much do you want to withdrawl?"
            @withdrawl_amount =gets.chomp

            @@bank_customer.each do |x|
                if x[:name] == @@name
                    puts "Your Balance is now $#{x[:balance] - @withdrawl_amount.to_i}"
                end
            end
        else
            puts "Invalid option, Please try again"
        end
    end
end


print "Please enter your username: "
user_name = gets.chomp
print "Please enter your password: "
user_password = gets.chomp

check_valid = Bank.new(user_name,user_password)

check_valid.options_functions