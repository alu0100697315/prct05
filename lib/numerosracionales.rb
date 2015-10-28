class Numerosracionales

attr_reader :numerador, :denominador
	
	def gcd(u, v)
  	u, v = u.abs, v.abs
  	while v != 0
    	u, v = v, u % v
  	end
  	u
	end

        def mcm(a,b)
        aux=gcd(a,b)
        (a/aux)*b
        end
	
	def initialize(n,d)      
	@numerador,@denominador = n, d
	end

        def simplificar(object)
        aux= gcd(object.numerador, object.denominador)
        Numerosracionales.new(object.numerador/aux, object.denominador/aux)
        end

	def to_s                 
	"#{numerador}/#{denominador}"
	end

	def suma(object) 
        aux=mcm(@denominador,object.denominador) 
        resultado=Numerosracionales.new((((aux*numerador)/denominador)+(aux*object.numerador)/object.denominador),aux)
        simplificar(resultado)
	end

	def resta(object) 
	aux=mcm(@denominador,object.denominador) 
        resultado=Numerosracionales.new((((aux*numerador)/denominador)-(aux*object.numerador)/object.denominador),aux)
        simplificar(resultado)
	end

	def producto(object)            
        resultado=Numerosracionales.new(@numerador*object.numerador,@denominador*object.denominador)
        simplificar(resultado)
	end 

	def division(object)
	resultado=Numerosracionales.new(@numerador*object.denominador,@denominador*object.numerador)
        simplificar(resultado)
	end
end


