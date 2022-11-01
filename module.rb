

module Tools

    def greetings
        puts "Hello from module.rb"
    end

end




include 'Tools'
Tools.greetings
