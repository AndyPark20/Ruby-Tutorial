class Production
    attr_accessor :product
    attr_accessor :origin

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