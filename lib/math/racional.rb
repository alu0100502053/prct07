require_relative "gcd.rb"
class Racional

	include Comparable
   attr_accessor :numerador, :denominador

   def initialize(numerador, denominador)
      @numerador, @denominador = numerador, denominador
      reducir
   end
   def reducir
      mcd = gcd(@numerador, @denominador)
      @numerador = (@numerador/mcd)
      @denominador = (@denominador/mcd)
   end
   def num
      @numerador
   end
   def denom
      @denominador 
   end
   def to_s
      "#{@numerador}/#{@denominador}"
   end
   def flotante
      @numerador/@denominador
   end
   def abs
      if @numerador < 0 then @numerador = @numerador * -1 end
      if @denominador < 0 then @denominador = @denominador * -1 end
   end
   def reciprocal
      a = @numerador
      @numerador = @denominador
      @denominador = a
   end
   def -@
      @numerador = @numerador * -1
   end
   def +(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      @numerador = ((mcm/@denominador*@numerador) + (mcm/other.denominador*other.numerador))
      @denominador = mcm
   end
   def -(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      @numerador = ((mcm/@denominador*@numerador) - (mcm/other.denominador*other.numerador))
      @denominador = mcm
   end
   def *(other)
      @numerador = @numerador * other.numerador
      @denominador = @denominador * other.denominador
   end
   def /(other)
      @numerador = @numerador * other.denominador
      @denominador = @denominador * other.numerador
   end
   def %(other)
      (@numerador/@denominador)%(other.numerador/other.denominador)
   end
   def <=>(other)
   	@numerador <=> other.numerador
   	@denominador <=> other.denominador
   end
end
