module Credentials
  require "bcrypt"

  def self.create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
    puts hashed_password
  end

  def self.create_user(username, password, users)
    users.push({ username: username, password: create_hash_password(password) })
  end

  def self.validate_password(password, users)
    users.each do |user_profile|
      if (BCrypt::Password.new(user_profile[:password]) == password)
        puts "Welcome back #{user_profile[:username]}"
      else
        puts "Credentials invalid please try again"
      end
    end
  end
end
