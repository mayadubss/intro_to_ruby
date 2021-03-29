# Loop Exercise
# Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

loop do
  puts "The safe word is STOP"
  safe_word = gets.chomp.upcase
  if safe_word == "STOP"
    break
  end
end