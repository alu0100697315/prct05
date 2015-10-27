require 'lib/numerosracionales.rb'
require 'test/unit'


class TestNumerosracionales < Test::Unit::TestCase

def setup
    	@n1 = Numerosracionales.new(1,2)
    	@n2 = Numerosracionales.new(2,1)
end

def test_simple
	assert_equal("1/2",@n1.to_s)
	assert_equal("2/1",@n2.to_s)
end

def test_suma
	assert_equal("5/2",@n1.suma(@n2).to_s)
end

def test_resta
	assert_equal("-3/2",@n1.resta(@n2).to_s)
end

def test_producto
 	assert_equal("1/1",@n1.producto(@n2).to_s)
end

def test_division
	assert_equal("1/4",@n1.division(@n2).to_s)
end

end
