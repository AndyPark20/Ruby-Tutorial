

users =[]

module CreateCredentials
  require "bcrypt"

  def self.create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
  end

  def self.create_user(username, password, users)
    if username != '' && password != ''
      users.push({ users[:username] = username, users[:password] = password })
    end
    puts users
  end
end


puts CreateCredentials.create_user('hiandy', 'hello', users)
