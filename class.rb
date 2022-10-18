
class Person
    def initialize(name, age)
        @name = name
        @age=age
    end

    public
    def test
        puts "#{@name} is #{@age}!"
    end

end

copy_person = Person.new("andy",26)
copy_person.test