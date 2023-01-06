class Student
  @first_name
  @last_name
  @email
  @username
  @password

  #setter
  def first_name= (name)
    @first_name = name
  end

  def to_s
    "Hello #{@first_name}"
  end

end

andy = Student.new

andy.first_name = "andy"
puts andy.first_name
