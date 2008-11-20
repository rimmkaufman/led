require 'test/unit'
require 'font'
require 'pp'

class FontTest < Test::Unit::TestCase
  def test_init
		assert_nothing_raised { Font.new('default.font')}
	end
end