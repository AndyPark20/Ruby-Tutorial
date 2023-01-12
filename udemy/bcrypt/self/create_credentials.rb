module Credentials
  require "bcrypt"

  def create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
    puts "Completed #{hashed_password}"
  end

  def create_user(username, password, users)
    users.push({ username: username, password: create_hash_password(password) })
  end

  def validate_password(password, users)
    users.each do |user_profile|
      if (BCrypt::Password.new(user_profile[:password]) == password)
        puts "Welcome back #{user_profile[:username]}"
      else
        puts "Credentials invalid please try again"
      end
    end
  end
end
