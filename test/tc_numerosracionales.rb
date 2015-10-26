require "./numerosracionales.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase

def setup
    	@p1 = Numerosracionales.new(1,2)
    	@p2 = Numerosracionales.new(1,3)
end

def test_suma
	assert_equal("7 / 12",@p1.suma(@p2).to_s)
end
end
