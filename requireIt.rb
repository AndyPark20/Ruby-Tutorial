

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
    attr_accessor :actual_inventory

    @@actual_inventory = 0
  
    def initialize(product, origin, inventory)
        @product = product
        @origin = origin
        @inventory = inventory
    end

    public
    def production_inventory
        puts "#{@product} is currently available"
    end

   
    def testing
        @@actual_inventory+=inventory
      
    end

    def instance_testing
        @inventory +=1
    end

    private
    def origin_country
        puts "#{origin} is confidential"
    end
end



new_production = Production.new("kimchi", "south korea",1)
second_production = Production.new("food", "America",2)

# puts "line #44: #{new_production.add_inventory(2)}"
puts " Actual inventory: #{new_production.instance_testing}"
puts "second_production: #{second_production.instance_testing}"

