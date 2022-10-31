


def check_credentials(user_name, user_ssn, user_password)
    info = [
        {name: "andy", ssn: '6789', password: 'hello123'},
        {name: "Jason", ssn: '8989', password: 'good123'}
    ]

    # info.find do |users|
    #     puts users[:name] == user_name && users[:ssn] == user_ssn && users[:password] == user_password 
    # end

    user_found = info.find {|users| users[:name] == user_name && users[:ssn] == user_ssn && users[:password] == user_password } 

    puts user_found ? "Welcome back #{user_found[:name]}" : "Access denied!"
    
end 

check_credentials('andy', '6789', 'hello123')