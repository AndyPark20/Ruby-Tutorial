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


class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = username
    @password = password
  end

  def to_s
    "Hello #{firstname} welcome with the email address of #{email}"
  end

end
