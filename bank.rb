=begin
 1. Objective: User can access their bank account with username and password and allows users to
    deposit, withdrawl, and check their balance

=end

#Create class that acts a bank
#Has information about username + password
#balance information


class bank
    attr_reader :username, :password
    
    @@bank_customer = [
        {name:'Andy',username:"ruby123", password:"hello123", balance:500},
        {name:'Jennifer', username:"javascript123",password:"goodbye123", balance:123_456_123}
    ]

    def initialize(username, password)
        @username = username
        @password = password
    end


end