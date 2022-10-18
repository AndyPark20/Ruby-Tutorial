class Computer
    #class variable
    @@users ={}
    def intialize(username,password)
        #instance variable
        @username = username
        @password = password
        @files ={}
        @@users[username] = password
    end

    def create(filename)
        time = Time.now
        @files[filename] = time

        puts "#{filename} was created @ time"
    end

    def Computer.get_users
        return @@users
      end
end



#Creating an instance
my_computer = Computer.new("andy123", "park456")