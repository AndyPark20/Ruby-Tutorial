require_relative 'Crud'

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @user_name = username
    @email = email
    @password = password
  end




  def to_s
    "Hello #{@first_name} #{@last_name} welcome to #{email}"
  end

end

andy = Student.new("andy", "park", "hiandy898989", "testing@gmail.com", "1234949")
jason = Student.new("jason", "kim", "hijason", "testing1234@gmail.com", "95959595")

hashed_password = andy.create_hash_digest(andy.password)

p hashed_password
