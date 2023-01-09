# class Student
#   attr_accessor :first_name, :last_name, :email, :username, :password

#   def initialize(firstname, lastname, username, email, password)
#     @first_name = firstname
#     @last_name = lastname
#     @user_name = username
#     @email = email
#     @password = password
#   end




#   def to_s
#     "Hello #{@first_name} #{@last_name} welcome to #{email}"
#   end

# end

# andy = Student.new("andy", "park", "hiandy898989", "testing@gmail.com", "1234949")
# jason = Student.new("jason", "kim", "hijason", "testing1234@gmail.com", "95959595")

# puts andy
# puts jason
# andy.last_name = jason.last_name
# puts "Revised"
# puts andy


# class Student
#   attr_accessor :first_name, :last_name, :email, :username, :password

#   def initialize(firstname, lastname, email, username, password)
#     @first_name = firstname
#     @last_name = lastname
#     @email = username
#     @password = password
#   end

#   def to_s
#     "Hello #{@firstname} welcome with the email address of #{@email}"
#   end

# end

# andy = Student.new("Andy", "Park", "test@gmail.com", "test", "test123")

# puts andy

# andy.email = "revised@gmail.com"

# puts andy




users =[
  {username:"andy", password: "password123"},
  {username:"jared", password: "password32"}
]


module Crud
  require "bcrypt"

  def create_hash_digest(password)
  BCrypt::Password.create(password)
  end

  #Verify password
  def verify_hash_digest(password)
  BCrypt::Password.new(password)
  end

  def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] = create_hash_digest(user_record[:password])
  end
  list_of_users
  end


  def authenticate_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] ==  username && verify_hash_digest(user_record[:password]) == password
      return user_record
    end
  end
  "Credentials were not correct"
  end
end
