# hash_exercise1
# Use Ruby's built in select method to gather only immediate family members' names into a new array

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

new_array = family.select {|key, value| key == :sisters || key == :brothers}.values.to_a.flatten
p new_array