require 'minitest/autorun'
require_relative '../lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1,'m','n')
    assert_equal 0.38, convert_length(15, 'm', 'n')
    
  end
end

