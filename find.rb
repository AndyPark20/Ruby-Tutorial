


def matching(user_name, user_ssn, user_password)
    info = [
        {name: "andy", ssn: '6789', password: 'hello123'},
        {name: "Jason", ssn: '8989', password: 'good123'}
    ]

    info.find {|x| x[:name] ==user_name && x[:ssn]== user_ssn && x[:password] == user_password}
end 

matching('andy', '6789', 'hello123')