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

x = input("data")
