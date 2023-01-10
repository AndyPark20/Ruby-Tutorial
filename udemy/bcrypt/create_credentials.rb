

users =[]

module Credentials
  require "bcrypt"

  def self.create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
  end

  def self.create_user(username, password, users)
      users.push({ username: username, password: password })
  end
end


puts Credentials.create_user('hiandy', 'hello', users)
