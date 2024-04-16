class Book
  attr_accessor :title, :author, :pages

  def initialize(name:)
    puts "Hello #{name}"
  end

  def self.presence
    self
  end
end

book1 = Book.new(name: 'andy')
puts "Method #{Book.presence}"
puts "This is #{book1}"
