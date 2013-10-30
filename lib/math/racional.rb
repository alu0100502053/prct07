require_relative "gcd.rb"
class Racional

   attr_accessor :numerador, :denominador
   
   def initialize(numerador, denominador)
      @numerador, @denominador = numerador, denominador
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
   def ==(other)
      return @numerador == other.numerador && @denominador == other.denominador if other.instance_of? Racional
      false
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
      reducir
   end
   def -(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      @numerador = ((mcm/@denominador*@numerador) - (mcm/other.denominador*other.numerador))
      @denominador = mcm
      reducir
   end
   def *(other)
      @numerador = @numerador * other.numerador
      @denominador = @denominador * other.denominador
      reducir
   end
   def /(other)
      @numerador = @numerador * other.denominador
      @denominador = @denominador * other.numerador
      reducir
   end
   def %(other)
      (@numerador/@denominador)%(other.numerador/other.denominador)
   end
   def menor(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      a = (mcm/@denominador*@numerador)
      b = (mcm/other.denominador*other.numerador)
      return @numerador < other.numerador
      false
   end
   def mayor(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      a = (mcm/@denominador*@numerador)
      b = (mcm/other.denominador*other.numerador)
      return @numerador > other.numerador
      false
   end
   def menorigual(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      a = (mcm/@denominador*@numerador)
      b = (mcm/other.denominador*other.numerador)
      return @numerador <= other.numerador
      false
   end
   def mayorigual(other)
      mcm = (@denominador * other.denominador)/gcd(@denominador, other.denominador)
      a = (mcm/@denominador*@numerador)
      b = (mcm/other.denominador*other.numerador)
      return @numerador >= other.numerador
      false
   end
end
