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
    end

end