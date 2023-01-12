require_relative 'create_credentials.rb'

class MasterUserList
  include Credentials
  attr_accessor :username, :password

  USERS = []

  def initialize(username, password)
    @username = username,
    @password = password
  end

  def to_s
    puts "hello Authenticator"
  end
end

print "Please enter username:"
user_username = gets.chomp
print "Please enter password:"
user_password = gets.chomp

if(user_username && user_password)
  copy_master_user_list = MasterUserList.new(user_username, user_password)
end

puts "Creating user password"
copy_master_user_list.create_hash_password(copy_master_user_list.password)
