# ruby_book_final_exercises.rb

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#1
puts "Exercise 1:"
arr.each{|num| puts num}

#2
puts "\nExercise 2:"
arr.each do |num|
  if num > 5
    puts num
  end
end

#3
puts "\nExercise 3:"
new_arr = arr.select{|num| num % 2 != 0}
p new_arr

#4
puts "\nExercise 4:"
arr.push(11)
arr.unshift(0)
p arr

#5
puts "\nExercise 5:"
arr.delete(11)
arr << 3
p arr

#6
puts "\nExercise 6:"
arr.uniq!
p arr

#7
#An array is an indexed list of any data type
#A hash is a list of key-value pairs, the order is not maintained in Ruby 1.9 or greater

#8
puts "\nExercise 8:"
hash1 = {one: 1, two: 2, three: 3, four: 4, five: 5}
hash2 = Hash.new
hash2[:one] = 1
hash2[:two] = 2
hash2[:three] = 3
hash2[:four] = 4
hash2[:five] = 5
puts hash1
puts hash2

#9
puts "\nExercise 9:"
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h["e"] = 5
h.each do |k, v|
  if v < 3.5
    h.delete(k)
  end
end
puts h

#10
#hash value as array:
h_v_a = {A: [1, 2, 3], B: [4, 5, 6], C: [7, 8, 9]}
a_of_h = [{A: 1}, {B: 2}, {C: 3}]

#11
puts "\nExercise 11:"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
c_d = contact_data.flatten
contacts["Joe Smith"] = {email: c_d[0], address: c_d[1], phone: c_d[2]}
contacts["Sally Johnson"] = {email: c_d[3], address: c_d[4], phone: c_d[5]}
puts contacts

#12
puts "\nExercise 12:"
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#13
puts "\nExercise 13:"
arr13 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr13.delete_if {|string| string.start_with?("s")}
p arr13
arr13 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr13.delete_if {|string| string.start_with?("s") || string.start_with?("w")}
p arr13

#14
puts "\nExercise 14:"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a.map!{|element| element.split}.flatten!
p a

#15
#these hashes are the same!

#16
puts "\nExercise 16:"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
info = [:email, :address, :phone]

contacts.each do |key, value|
  if key == "Joe Smith"
    for x in 0..2 do
      value[info[x]] = contact_data[0].shift
    end
  elsif key == "Sally Johnson"
    for x in 0..2 do
      value[info[x]] = contact_data[1].shift
    end
  else
    puts "Error!"
  end
end
p contacts