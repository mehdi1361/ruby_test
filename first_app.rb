require "colorize"

text = ""
line_count = 0

File.open("text.txt").each do |line|
  line_count += 1
  text += line
end
puts "line number is #{line_count}"
text = ""
lines = File.readlines("text.txt")
lines_count = lines.size
text = lines.join
puts "lines number in other methods is ".yellow + "#{lines_count}".red
total_chatacter = text.length
puts "total character:".red + "#{total_chatacter}".blue
puts "this is a test".gsub(/t/, "X").red
total_character_no_space = text.gsub(/\S+/,"")

puts "total character without space #{total_character_no_space.length}".blue


