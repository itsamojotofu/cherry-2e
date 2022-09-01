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

require 'minitest/autorun'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal 1, fizz_buzz(1)
    assert_equal 2, fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
  end
end