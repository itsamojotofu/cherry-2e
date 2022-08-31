require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # assert_equal b, a (pass if a == b)
    assert_equal 'RUBY', 'ruby'.upcase
  end
end