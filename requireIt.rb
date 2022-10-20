module Calculator

    MASTERINVENTORY=14

    def add_inventory(value)
        MASTERINVENTORY + value
    end
end




class Production
    include Calculator

    attr_accessor :product
    attr_accessor :origin
    attr_accessor :inventory
    @@actual_inventory = 0
    def initialize(product, origin, inventory)
        @product = product
        @origin = origin
        @inventory = inventory
    end

    public
    def inventory
        puts "#{@product} is currently available"
    end

    private
    def origin_country
        puts "#{origin} is confidential"
    end
end


new_production = Production.new("kimchi", "south korea",1)

puts new_production.add_inventory(2)

