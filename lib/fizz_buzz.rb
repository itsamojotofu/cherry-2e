def fizz_buzz(num)
  if num % 15 == 0
    "Fizz Buzz"
  elsif num % 5 == 0
    "Buzz"
  elsif num % 3 == 0
    "Fizz"
  else
    return num
  end
end