class Production
    attr_accessor :product
    attr_accessor :origin

    def initialize(product, origin)
        @product = product
        @origin = origin
    end

    def print_out_inventory
        puts "We have #{@product} which is made from #{@origin}"
    end
end


new_production = Production.new("Kimchi", "South Korea")

new_production.print_out_inventory