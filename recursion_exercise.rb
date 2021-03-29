# recursion_exercise.rb

# exercise_1
# Write a method that counts down to zero using recursion.
def count_down(num)
  if num >= 0
    p num
    count_down(num - 1)
  end
end

count_down(10)
