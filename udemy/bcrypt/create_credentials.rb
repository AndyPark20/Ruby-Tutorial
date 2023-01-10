

users =[]

module Credentials
  require "bcrypt"

  def self.create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
  end

  def self.create_user(username, password, users)
    users.push({ username: username, password: password })
  end

  def self.validate_password(password)
    users.each do |user_profile|
      if BCrypt::Password.new(user_profile[:password]) == BCrypt::Password.new(password)
        puts user_profile[:username]
    end

  end
end


puts Credentials.validate_password('hiandy', 'hello', users)
