# more_stuff_exercises.rb

# exercise_1
strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

strings.each do |string|
  if /lab/.match(string)
    puts string
  end
end
