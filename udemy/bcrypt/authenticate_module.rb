



class MasterUserList
  require_relative 'create_credentials.rb'
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


copy_master_user_list = MasterUserList.new('hiandy', 'hello123')

p copy_master_user_list
