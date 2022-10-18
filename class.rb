
class Chef 
    @@name ="andy"
    def chef_name
        puts @@name
    end

    def asian_food
        puts "I can make Korean food!"
    end

    def american_food
        puts "I can make Hamburger and fries!"
    end

    def italian_food
        puts "I can make spaghetti!"
    end
end


class New_chef < Chef
    def italian_food
        puts "I can make Pizza!"
        super
    end
end



another_chef = New_chef.new()

another_chef.chef_name