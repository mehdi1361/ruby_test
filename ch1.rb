puts "hello world"

class Pet
  attr_accessor :name, :age, :gender
end

class Dog < Pet
  attr_accessor :test
  def bark
    puts "barking..."
  end
end

class Cat < Pet
  def meow(opo)
    puts "#{self.name} says #{opo}"
  end
end

d = Dog.new
d.name = "moucha"


10.times do
  puts "hello"
end

1.upto(20) {|number| puts number }
5.step(50, 5) { |number|  puts number}

5.step(50, 3) do |number|
  puts number
end

puts d.name
puts d.bark

c = Cat.new
c.name = "mmmm"
c.meow("xsxs")
