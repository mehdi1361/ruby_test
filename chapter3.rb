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
