

module Tools

    def greetings
        puts "Hello from module.rb"
    end

end

class Dynamic
include Tools

end




testing = Dynamic.new
testing.greetings
