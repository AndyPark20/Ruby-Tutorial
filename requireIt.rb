module Calculator

    def add_inventory(value)
        return value +value
    end

end




class Production
    attr_accessor :product
    attr_accessor :origin
    attr_inventory :inventory
    @@actual_inventory = 0
    def initialize(product, origin)
        @product = product
        @origin = origin
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


new_production = Production.new("kimchi", "south korea")

new_production.origin_country