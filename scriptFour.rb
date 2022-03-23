class Dog
    attr_reader :name
    attr_writer :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
    end
end