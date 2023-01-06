class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @user_name = username
    @email = email
    @password = password
  end




  def to_s
    "Hello #{@first_name}"
  end

end

andy = Student.new("andy", "park", "hiandy898989", "testing@gmail.com", "1234949")
jason = Student.new("andy", "park", "hiandy898989", "testing@gmail.com", "1234949")
