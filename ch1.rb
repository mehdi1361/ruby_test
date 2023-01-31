puts "hello world"

class Pet
  attr_accessor :name, :age, :gender
end

class Dog < Pet
  attr_accessor :test
end


d = Dog.new

d.name = "moucha"

puts d.name
