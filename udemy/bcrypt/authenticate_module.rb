



class MasterUserList
  require_relative 'create_credentials.rb'
  attr_accessor :username, :password

  USERS = []

  def initialize(username, password)
    @username = username,
    @password = password
  end

  def create_password_hash(password)
    Credentials.create_hash_password(@password)
  end

  def to_s
    puts "hello Authenticator"
  end
end


copy_master_user_list = MasterUserList.new('hiandy', 'hello123')
puts copy_master_user_list.create_password_hash('hell0123')
