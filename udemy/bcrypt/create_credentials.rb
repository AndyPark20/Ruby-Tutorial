


module CreateCredentials
  require "bcrypt"

  def self.create_hash_password(password)
    hashed_password = BCrypt::Password.create(password)
  end

  def self.create_user(username, password, users)
    users.each do |user_profile|
      user_profile[:username] = username
      user_password[:password] = password
    end
  end
end
