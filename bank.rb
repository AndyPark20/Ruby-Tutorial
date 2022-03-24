=begin
 1. Objective: User can access their bank account with username and password and allows users to
    deposit, withdrawl, and check their balance

=end

#Create class that acts a bank
#Has information about username + password
#balance information


class Bank
    attr_reader :username, :password

    @@bank_customer = [
        {name:'Andy',username:"ruby123", password:"hello123", balance:500},
        {name:'Jennifer', username:"javascript123",password:"goodbye123", balance:123_456_123}
    ]

    def initialize(username, password)
        @username = username
        @password = password
    end

    #check user credentials
    public
    def check_credentials
        @@bank_customer.each do |x|
           if ((x[:username]== @username) && (x[:password] == @password))
            return puts "welcome #{x[:name]}"
           else
            return puts "Username and password don't match, please try again"
           end  
        end
    end
end


print "Please enter your username: "
user_name = gets.chomp
print "Please enter your password: "
user_password = gets.chomp

check_valid = Bank.new(user_name,user_password)

check_valid.check_credentials