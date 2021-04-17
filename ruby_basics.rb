# Ruby Basics Exercises
=begin
# Loops 1

# Runaway Loop
# Modify the code so the loop stops after the first iteration.
loop do
  puts 'Just keep printing...'
  break # added to prevent infinite loop
end

# Loopception
# Modify the code so each loop stops after the first iteration.
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break # added to stop inner loop
  end
  break # added to stop outer loop
end

puts 'This is outside all loops.'

# Control the Loop
# Modify the following loop so it iterates 5 times instead of just once.
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations = 5 # added if statement to break command
  iterations += 1 # added incrementer
end

# Loop on Command
# Modify the code below so the loop stops iterating when the user inputs 'yes'.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes" # added break contingent on input
  puts "Loop will stop when the answer is 'yes'"
end

# Say Hello
# Modify the code below so "Hello!" is printed 5 times.
say_hello = true
count = 0
while say_hello
  puts 'Hello!'
  count += 1
  if count == 5
    say_hello = false
  end
end

# Print While
# Using a while loop, print 5 random numbers between 0 and 99. 
numbers = []
while numbers.size < 5
  numbers << rand(100)
end
puts numbers

# Count Up
# The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.
count = 1 # starting count at 1 rather than 10

until count == 11 # counting to 11 rather than 0
  puts count
  count += 1 # adding to counter rather than subtracting
end

# Print Until
# Given the array of several numbers below, use an until loop to print each number.
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# That's Odd
# Modify the code so that it only outputs i if i is an odd number.
for i in 1..100
  if i % 2 == 1 # added modulus operator to check if i is odd, could have also done i.odd?
    puts i
  end
# or
# puts i if i.odd?
end

# Greet Your Friends
# Given the following array of names, use a for loop to greet each friend individually.
friends = ['Sarah', 'John', 'Hannah', 'Dave']
for name in friends
  puts "Whadddddup #{name}!!"
end

# Loops 2

#Even or Odd?
#Write a loop that prints numbers 1-5 and whether the number is even or odd.
count = 1

loop do
  if count % 2 == 1
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end

#Catch the Number
#Modify the following code so that the loop stops if number is equal to or between 0 and 10.
loop do
  number = rand(100)
  break if 0 <= number && number <= 10
  #OR
  #if number.between?(0, 10)
  #break
  #end
  puts number
end

#Conditional Loop
#Using an if/else statement, run a loop that prints "The loop was processed!" one time if process_the_loop equals true. Print "The loop wasn't processed!" if process_the_loop equals false.
process_the_loop = [true, false].sample
if process_the_loop == true
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end

#Get the Sum
#Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer, try again!"
  end
end

#Insert Numbers
#Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

#Empty the Array
#Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.
names = ['Sally', 'Joe', 'Lisa', 'Henry']
loop do
  puts names.shift
  break if names.size == 0 #or if names.empty?
end

#Stop Counting
#The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.
5.times do |index|
  puts index
  break if index == 2
end

#Only Even
#Using next, modify the code below so that it only prints even numbers.
number = 0

until number == 10
  number += 1
  next if number % 2 == 1 #or number.odd?
  puts number
end

#First to Five
#Break the loop if number_a or number_b equals 5
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

#Greeting
#Given the code below, use a while loop to print "Hello!" twice.
def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end


#User Input

#Repeat after me
#Write a program that asks the user to type something in, after which your program should simply display what was entered.
puts ">> What do you want?" #Use >> to identify the prompt
input = gets.chomp
puts input

#Your Age in Months
#Write a program that asks the user for their age in years, and then converts that age to months.
puts ">> How old are you?"
years = gets.chomp.to_i
puts "You are #{years * 12} months old!"

#Print Something (Part 1)
#Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.
puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp.downcase
if answer == "y"
  puts "something"
end

#Print Something (Part 2)
#Add an error message to Print Something (Part 1) if anything other than y or n is inputted
loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  if answer == "y"
    puts "something"
    break
  elsif answer == "n"
    break
  else
    puts ">> Invalid! Please enter either y or n"
  end
end
#OR
#break if %w(y, n).include?(answer)

#Launch School Printer (Part 1)
#Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.
num = nil
loop do
  puts ">> How many output lines do you want? Enter number >= 3"
  num = gets.chomp.to_i
  break if num >= 3
  puts ">> Please enter a number >= 3!!"
end
num.times {puts "Launch School is the best!"}

#Passwords
#Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.
password = "MayaRocks"
loop do
  puts ">> What is the password?"
  pw = gets.chomp
  break if pw == password
  if pw.downcase == password.downcase
    puts ">> Password is case sensitive"
    next
  end
  puts ">> Incorrect! Try again"
end
puts "Welcome!"

#User Name and Password
#Adjust Passwords program to request a username and password. Issue one generic error message if either is incorrect, do not identify which is incorrect.
username = "mdubrow94"
password = "MayaRocks"
loop do
  puts ">> Username:"
  user = gets.chomp
  puts ">> Password:"
  pass = gets.chomp
  break if user == username && pass == password
  puts ">> Incorrect username or password."
end
puts "Welcome!"

#Dividing Numbers
#Write a program that obtains two Integers from the user, then prints the results of dividing the first by the second. The second number must not be 0, and both numbers should be validated using this method:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
numerator = nil
denominator = nil

loop do
  puts ">> Enter a numerator:"
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts ">> Numerator must be an integer."
end
  
loop do
  puts ">> Enter a denominator:"
  denominator = gets.chomp
  break if valid_number?(denominator) && denominator != "0"
  puts ">> Denominator must be a non-zero integer."
end
puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"


#Launch School Printer (Part 2)
#Modify Launch School Printer (Part 1) so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.
ans = nil
loop do
  puts ">> How many output lines do you want? Enter number >= 3 (Q to quit)"
  ans = gets.chomp
  break if ans.downcase == "q"
  if ans.to_i < 3
    puts "Not enough lines."
  else
    ans.to_i.times {puts "Launch School is the best!"}
  end
end

#Opposites Attract
#Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

a = nil
b = nil

loop do
  loop do
    puts ">> Enter a positive or negative integer:"
    a = gets.chomp
    break if a.to_i != 0
    puts "Must be non-zero."
  end

  loop do
    puts ">> Enter a positive or negative integer:"
    b = gets.chomp
    break if b.to_i != 0
    puts "Must be non-zero."
  end
  
  num_a = a.to_i
  num_b = b.to_i

  break if valid_number?(a) && valid_number?(b) && 
    ((num_a.positive? && num_b.negative?) || (num_a.negative? && num_b.positive?))
  
  puts "Sorry, one integer must be positive and one must be negative."
end

puts "#{a} + #{b} is #{a.to_i + b.to_i}"

#Methods

#Print Me (Part 1)
#Write a method named print_me that prints I'm printing within the method! when invoked
def print_me
  puts "I'm printing within the method!"
end

print_me

#Print Me (Part 2)
#Write a method named print_me so that I'm printing the return value! is printed when running the following code:
def print_me
  return "I'm printing the return value!" #don't have to use return, method will return result of last executed line of code
end

puts print_me #provided code

#Greeting Through Methods (Part 1)
#Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.
def return_hello
  "Hello"
end

def return_world
  "World"
end

puts return_hello + " " + return_world

#Greeting Through Methods (Part 2)
#Define a method Greet that invokes the methods from Part 1 to give the same output when invoked with puts
def greet
  return_hello + " " + return_world
end

puts greet

#Make and Model
#Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.
def car(make, model)
  puts make + " " + model
  #OR
  #puts "#{make} #{model}"
end

car("Mazda", "Mazda3")

#Day or Night?
#Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.
daylight = [true, false].sample
def time_of_day(boolean)
  if boolean
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

#Naming Animals
#Run the code as it is shown below, and take notice of any error messages. Update the program for the following output:
#The dog's name is Spot.
#The cat's name is Ginger.
def dog(name) #original method did not have a parameter defined for the name but was passed an argument
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}." #original call of the method cat did not pass an argument to the name parameter

#Name Not Found
#Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument
def assign_name(name = 'Bob')
  name
end

#should output to true twice:
puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

#Multiply the Sum
#Write the following methods so that each output is true
def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

#Random Sentence
#Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today!"
end

puts sentence(name(names), activity(activities))

#Return

#Breakfast, Lunch or Dinner? (Part 1)
#What will the code print?

def meal
  return 'Breakfast'
end

puts "My answer is 'Breakfast'"
puts meal

#Breakfast, Lunch or Dinner? (Part 2)
#What will the following code print? Why?
def meal
  'Evening'
end

puts "My answer is 'Evening'"
puts meal

#Breakfast, Lunch or Dinner? (Part 3)
#What will the following code print? Why? 
def meal
  return 'Breakfast'
  'Dinner'
end

puts "My answer is 'Breakfast' because the return makes that the last (and only) line that is evaluated."
puts meal

#Breakfast, Lunch or Dinner? (Part 4)
#What will the following code print? Why?
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts "My answer is 'Breakfast' because by calling #puts on the method you are printing the return value."
#I was partially right, but 'Dinner' is still printed first because the method was called.
puts meal

#Breakfast, Lunch or Dinner? (Part 5)
#What will the following code print? Why?
def meal
  'Dinner'
  puts 'Dinner'
end
puts "My answer is 'Dinner' 'Dinner' on two lines"
#Nope...it's 'Dinner' 'nil' because the puts line is the last executed and has a return value of nil.
p meal

#Breakfast, Lunch or Dinner? (Part 6)
#What will the following code print? Why?
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts "My answer is 'Breakfast' because return will exit the method, even the last Dinner will not print"
puts meal

#Counting Sheep (Part 1)
#What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts "0 1 2 3 4 5 all on their own lines"
puts count_sheep
#the 0-4 is because .times starts at 0 and we called for 5 indices. The 5 is because .times returns the value that it was called on.

#Counting Sheep (Part 2)
#What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts "0 1 2 3 4 10 all on their own lines"
puts count_sheep

#Counting Sheep (Part 3)
#What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

puts "0 1 2 5 because at 2 you hit return which exits the method but the .times returns the call of 5"
#nope, return ends the method and returns nil. Without the return statement the method returns the 5.
p count_sheep

#Tricky Number
#What will the following code print? Why?
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts "1 because setting the value of a variable returns the value. nothing is printed"
puts tricky_number

#Conditionals

#Unpredictable Weather (Part 1)
#Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
sun = ['visible', 'hidden'].sample
if sun == "visible"
  puts "The sun is so bright!"
end

#Unpredictable Weather (Part 2)
#Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.
unless sun == "visible"
  puts "The clouds are blocking the sun!"
end

#Unpredictable Weather (Part 3)
#Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.
#Take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement to print results
sun = ['visible', 'hidden'].sample
puts "The sun is so bright!" if sun == "visible"
puts "The clouds are blocking the sun!" unless sun == "visible"


#True or False
#Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.
boolean = [true, false].sample
boolean == true ? puts("I'm true!") : puts("I'm false!")
#NOTE: could just put boolean rather than boolean == true as boolean already will be true or false
#NOTE: need to use () for puts not a space or ruby thinks the statement is ending

#Truthy Number
#What will the following code print? Why?
number = 7
puts "My answer is it will print My favorite number is 7. Because every expression evaluates to true (hence the title of the problem)"
if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

#Stoplight (Part 1)
#Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.
stoplight = ['green', 'yellow', 'red'].sample
case stoplight
when "green"
  puts "Go!"
when "yellow"
  puts "Slow Down!"
when "red"
  puts "Stop!"
end

#Stoplight (Part 2)
#Convert the case statement from Part 1 to an if statement
stoplight = ['green', 'yellow', 'red'].sample
if stoplight == "green"
  puts "Go!"
elsif stoplight == "yellow"
  puts "Slow down!"
else
  puts "Stop!"
end

#Sleep Alert
#Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable.
status = ['awake', 'tired'].sample
var =
  if status == "awake"
    "Be productive!"
  else
    "Go to sleep!"
  end

puts var

#Cool Numbers
#Currently, "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.
number = rand(10)

if number == 5 #original code had only = so it was defining number instead of comparing the values
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

#Stoplight (Part 3)
#Reformat the following case statement so that it only takes up 5 lines.
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end
#NOTE: this is a formatting example, and if the when clauses had multiple statements then they should still be multi-lined


#Strings

#Create a String
#Create an empty string using the String class and assign it to a variable.
empty_string = ""
#OR
empty_string = String.new

#Quote Confusion
#Modify the following code so that double-quotes are used instead of single-quotes.
puts "It's now 12 o'clock."
puts %Q(It's now 12 o'clock.) #double quotes alternative
puts %q(It's now 12 o'clock.) #single quotes alternative

#Ignoring Case
#Compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.
name = 'Roger'
if name.downcase == 'RoGeR'.downcase
  puts true
else
  puts false
end

if name.downcase == 'DAVE'.downcase
  puts true
else
  puts false
end

#OR
name = 'Roger'
puts name.casecmp('RoGeR') == 0 #String.casecmp returns 0 if strings are equal, not case sensitive
puts name.casecmp('DAVE') == 0 #String.casecmp returns -1 if name is less than DAVE and 1 if the opposite is true

#Dynamic String
#Modify the following code so that the value of name is printed within "Hello, !".
name = 'Elizabeth'

puts "Hello, #{name}!"

#Combining Names
#Combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name
#OR
puts full_name = [first_name, last_name].join(" ")

#Tricky Formatting
#Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.
state = 'tExAs'
state.capitalize!
puts state

#Goodbye, not Hello
#Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.
greeting = 'Hello!'
greeting.gsub!("Hello", "Goodbye")
puts greeting

#Print the Alphabet
#Using the following code, split the value of alphabet by individual characters and print each character.
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split(//) #or ('')

#Pluralize
#Given the following code, use Array#each to print the plural of each word in words.
words = 'car human elephant airplane'
words.split(" ").each{|word| puts word + "s"}

#Are You There?
#Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.
colors = 'blue pink yellow orange'
puts colors.include?('yellow')
puts colors.include?('purple')

#Arrays

#New Pet
#Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.
pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[2]
puts "I have a pet #{my_pet}!"

#More Than One
#Write some code that selects 'fish' and 'lizard' from the pets array - select the two items at the same time. Assign the return value to a variable named my_pets, then print the contents of my_pets as a single string.
my_pets = pets[2, 3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#Free the Lizard
#Remove 'lizard' from my_pets then print the value of my_pets.
my_pets.pop
puts "I have a pet #{my_pets[0]}!" #even though my_pets only has one element, it is still an array, not a string

#One Isn't Enough
#Select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.
my_pets << pets[1] #also could do my_pets.push(pets[1])
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

#What Color Are You?
#Use Array#each to iterate over colors and print each element.
colors = ['red', 'yellow', 'purple', 'green']
colors.each{|color| puts "I'm the color #{color}!"}

#Doubled
#Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map{|x| x * 2}
p doubled_numbers

#Divisible by Three
#Use Array#select to iterate over numbers and return a new array that contains only numbers divisible by three. Assign the returned array to a variable named divisible_by_three and print its value using #p.
numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select{|x| x % 3 == 0}
p divisible_by_three

#Favorite Number (Part 1)
#Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)
a = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
a1 = ['Dave', 7]
a2 = ['Miranda', 3]
a3 = ['Jason', 11]
a_all = [a1, a2, a3]
p a_all

#Favorite Number (Part 2)
#Flatten and print the Part 1 array. That is, the printed result should not have any subarrays, but should have all of the original strings and numbers from the original array:
p a_all.flatten

#Are We The Same?
#Compare array1 and array2 and print true or false based on whether they match.
array1 = [1, 5, 9]
array2 = [1, 9, 5]
puts array1.eql?(array2) #or just array1 == array2

#Hashes

#First Car
#Create a hash that contains the following data and assign it to a variable named car.
car = {type: 'sedan', color: 'blue', mileage: 80_000}

#Adding the Year
#Add the key :year and the value 2003 to car.
car[:year] = 2003 #also can do car.merge!({year: 2003})

#Broken Odometer
#Delete the key :mileage and its associated value from car.
car.delete(:mileage)

#What Color?
#Select the value 'blue' from car and print it with #puts.
puts car[:color]

#Labeled Numbers
#Use Hash#each to iterate over numbers and print each element's key/value pair.
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each {|key, value| puts "A #{key} number is #{value}."}

#Divided by Two
#Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.
half_numbers = numbers.map{|key, value| value / 2}
p half_numbers

#Low, Medium, or High?
#Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.
low_numbers = numbers.select{|key, value| value < 25}
p low_numbers

#Low or Nothing
#Altering select to select! so it is destructive
low_numbers = numbers.select! do |key, value|
  value < 25
end

p low_numbers
p numbers

#Multiple Cars
#Create a nested hash with the given information
vehicle = {car:   {type: 'sedan', color: 'blue', year: 2003}
           truck: {type: 'pickup', color: 'red', year: 1998}
          }

#Which Collection?
#Rewrite car as a nested array containing the same key-value pairs.
car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]

#Debugging

#Reading Error Messages

#Weather Forecast
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
predict_weather
#Multiply By Five

#Pets
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].push('bowser')

p pets

#Even Numbers
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n if n.even?
end

p even_numbers # expected output: [2, 6, 8]

#Confucius Says
def get_quote(person)
  if person == 'Yoda'
    'Do. Or do not. There is no try.'
  elsif person == 'Confucius'
    'I hear and I forget. I see and I remember. I do and I understand.'
  elsif person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts get_quote('Confucius')

#Account Balance
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

#Colorful Things
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= colors.length || i >= things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

#Digit Product
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')

=end


#Warriors and Wizard
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym])

puts 'Your character stats:'
puts player