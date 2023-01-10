

users =[]

module Credentials
  require "bcrypt"

  def self.create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
  end

  def self.create_user(username, password, users)
    users.push({ username: username, password: password })
  end

  def self.validate_password(password, users)
    users.each do |user_profile|
      if BCrypt::Password.new(user_profile[:password]) == password
        user_profile[:username]
      end
    end
  end

end


puts Credentials.create_user('hiandy', 'hello', users)
puts Credentials.validate_password('hello', users)
