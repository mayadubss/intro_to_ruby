# fibonacci.rb

def fibonacci(number)
  if number < 2
    p number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

fibonacci(6)