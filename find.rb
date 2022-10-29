


def check_credentials(user_name, user_ssn, user_password)
    info = [
        {name: "andy", ssn: '6789', password: 'hello123'},
        {name: "Jason", ssn: '8989', password: 'good123'}
    ]

   info.find do |x| 
    puts x[:name] ==user_name && x[:ssn]== user_ssn && x[:password] == user_password ? "Hello" : "goodbye"
   end
end 

check_credentials('andy', '6789', 'hello123')