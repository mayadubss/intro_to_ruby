puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hey there, #{first_name} #{last_name}! How old are you?"
age = gets.chomp
puts "In 10 years you will be " + (age.to_i + 10).to_s
puts "In 20 years you will be " + (age.to_i + 20).to_s

#10.times do puts name end