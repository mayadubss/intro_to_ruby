# hash_exercise

# exercise_1
# Use Ruby's built in select method to gather only immediate family members' names into a new array

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_array = family.select {|key, value| key == :sisters || key == :brothers}.values.to_a.flatten
p new_array

# exercise_2
# Write a program that shows the difference between merge and merge!
parents = {Dad: 61, Mom: 58}
kids = {Hannah: 28, Maya: 26, Deena: 22}

p "Merged with no bang: " + parents.merge(kids).to_s
p "Parents hash: " + parents.to_s
p "Merge with bang: " + parents.merge!(kids).to_s
p "SEE! " + parents.to_s

# exercise_5
# What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

example_h = {one: 1, two: 2, three: 3, four: 4, five: 5}
if example_h.has_value?(1)
  puts "Yup!"
else
  puts "Nope!"
end