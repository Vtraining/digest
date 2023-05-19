require 'digest'

puts "Hello! Please enter the frase for encrypt:"
string = STDIN.gets.chomp

puts "Please select the method:"
puts "1. MD5"
puts "2. SHA2"

user_choose = STDIN.gets.chomp

until user_choose == "1" || user_choose == "2"
  puts "You choose is not correct, please enter 1 or 2"
  user_choose = STDIN.gets.chomp
end

puts "That i sthe result:"

case user_choose
  when "1" then puts Digest::MD5.hexdigest(string)
  when "2" then puts Digest::SHA256.hexdigest(string)
end

