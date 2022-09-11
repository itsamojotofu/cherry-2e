# try TDD test driven development

require 'minitest/autorun'
require_relative '../lib/rgb_conversion'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0,0,0)
    assert_equal '#ffffff', to_hex(255,255,255)
    # error case
    assert_equal '#110c32', to_hex(100,40,15)
  end
  def test_to_ints
    assert_equal [0,0,0], to_ints('#000000')
  end
end
