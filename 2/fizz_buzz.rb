def fizz_buzz(num)
  if num % 15 == 0
    return "Fizz Buzz"
  elsif num % 5 == 0
    return "Buzz"
  elsif num % 3 == 0
    return "Fizz"
  else
    return num
  end
end

input = gets

fizz_buzz(input)
