

module Tools

    def greetings
        puts "Hello from module.rb"
    end

end


class Paper
    include Tools
end



pen = Paper.new
pen.greetings
