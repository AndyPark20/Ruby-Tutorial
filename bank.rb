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

    @@account_credential_check =false
    @@name = ""

    def initialize(username, password)
        @username = username
        @password = password
    end

    #check user credentials
    private
    def check_credentials
        @@bank_customer.each do |x|
           if ((x[:username]== @username) && (x[:password] == @password))
            @@account_credential_check = true;
            @@name =x[:name]
           end 
        end
    end

    public
    def credential_notification
        check_credentials()
       
        #Check if the credentials are correct
       puts @@account_credential_check ? "Welcome #{@@name}!" : "Invalid Login!"
    end
end


print "Please enter your username: "
user_name = gets.chomp
print "Please enter your password: "
user_password = gets.chomp

check_valid = Bank.new(user_name,user_password)

check_valid.credential_notification