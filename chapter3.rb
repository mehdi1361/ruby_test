require "colorize"
age = 24
puts "You're age!" if age == 24

puts "You're very Younger or ver older" if age > 80 || age < 10
puts "You are a teenager" if age > 12 && age < 20

gender = "male"
age = 6
puts "A very young or old man" if gender == "male" && (age < 18 || age > 85)

puts "Hello, World!"
puts "Hello, World".class

x = %q{ This is a test
of the multiple capacity}

puts x

x = %q!This is a test fo
multi line
capacity!

puts x

x = <<END_MY_STRING_PLEASE
this is my string
and a second line
END_MY_STRING_PLEASE

puts x

x = 10
y = 20
puts "#{x} + #{y} = #{x + y}"
puts "Its a #{"bad " * 5}"

puts "test" + "test"
puts "Test".capitalize
puts "Test".downcase
puts "Test".chop
puts "Test".next


puts"foobar".sub('bar', 'foo')
puts "this is a test".gsub("i", "")
puts "this is a test".sub(/^../, "hello")
puts "this is a test".sub(/^..../, "hello")
puts "this is a test".sub(/....$/, "bye")

"xyz".scan(/./) { |letter|  puts letter}
"this is a test".scan(/../) { |letter|  puts letter}
"this is a test".scan(/\w\w/) { |letter|  puts letter}
"This is a test".scan(/[a-m]/) { |x| puts x}

puts "**********************************************array setion ********************************************************"
x = [1, 2, 3, 4]
puts x[2]

x[2] += 1
puts x[2]

y = []
y << "hello"

y.push("world")

puts y[0]
puts y


x = []

x << "World"
x << "play"
x << "found"

puts x.length
puts x.pop
puts x.pop
puts x.length

x = ["world", "play", "fun"]
puts x.join
puts x.join(",")

puts "This is a test".scan(/\w/).join(',')
puts "This is a test".scan(/\w/).inspect
puts "Words with lots of spaces".split(/\s+/).inspect
p "Words with lots of spaces".split(/\s+/)

[1, "test", 2, 3, 4,].each { |elemets| puts elemets.to_s + "X" }
p [1, 2, 3, 4, 5, 6].collect { |elemets| elemets * 2}

a = [1, "test", 2, 3, 4]
i = 0
while (i < a.length)
  puts a[i].to_s + "X"
  i += 1
end

x = [1,2,3,4,5]
y = [1,2,3]
z = x - y
p z

x = []
puts "x is empty".blue if x.empty?


x = [1, 2, 3]

p x.include?("x")
p x.include?(2)
p x.first(2).join(",")
p x.last(2).join(",")

p x.reverse
p x.length
x.length.times do
  puts "hello"
end



x.length.times do |i|
  puts "hello " + x[i].to_s
end

puts "hello world".red

a = [1,2,3,4,5,6]
p a.map { |x|  x * 3}

x = 19

data = "young" if x < 20
data = "old" if x > 20

puts data

puts "enter yourname"
#x = gets

puts "your name is #{x}"
 x = {"a" =>  "test1", "b" =>"test2"}
 x.each{|key, value| puts "#{key}: #{value}"}

x = {a: 1, b: 25, c:12}
x.delete_if{|k, v| v < 25}
p x


people = {
  eliot: {
    age: 40,
    gender: "male",
    name: "eliot alderson",
    favorite: ["hack", "angeela"]
  },
  darlin: {
    age: 25,
    gender: "female",
    name: "darlin alderson",
    favorite: ["hack", "fuck"]
  },
}

puts people[:eliot]
puts people[:eliot][:favorite].length

age = 10

puts "you are young" if age < 15
puts "you are adult" if age > 15

age = 10

type = age < 15 ? "child" : "adult"
puts "you ars a " + type

age = 18

puts "you are a " + (age < 15 ? "child" : "adult")

def find_fruit_color(fruit)
  case fruit
  when "apple"
    "green"
  when "orange"
    "orange"
  when "banana"
    "yellow"
  else
    "Unknown"
  end
end

fruit = "orange"

puts "find #{fruit} color is " + find_fruit_color(fruit)

response = {error: "Bad GateWay", status: 500}

case response
in {data: data, status: status}
  puts "succes with #{data} and status is #{status}"

in {error: error, status: status}
  puts "error with error #{error} and status #{status}"
end


1.upto(5) { |item| puts item}

x = 1

while x < 100
  puts x
  x = x * 2
end

x = 1

until x > 99
  puts x
  x = x * 2
end

i = 1
i = i * 2 until i > 1000

puts "until one loop response is #{i}"
puts "until one loop response is " + i.to_s


x =[1, 2, 3]

x.each {|number| puts number}

x.each do |number|
  puts number
end

x.each { puts _1}

def each_vowel(&code_block)
  %w{a e i o u}.each {|vowel| code_block.call(vowel)}
end

each_vowel { |vowel| puts vowel}
each_vowel { |vowel| puts vowel * 2}


def each_vowel
  %w{a e i o u}.each {|vowel| yield vowel}
end
each_vowel { |vowel| puts vowel}
each_vowel { |vowel| puts vowel * 2}

print_param_to_screen = Proc.new {|x| puts x}
print_param_to_screen.call(100)
print_param_to_screen.call("hello world")

class Integer
  def seconds
    self
  end

  def minute 
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end
end

puts Time.now + 19.minute
puts Time.now + 19.hours
puts Time.now + 10.days
