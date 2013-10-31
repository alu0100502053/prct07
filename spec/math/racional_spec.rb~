require "lib/math/racional.rb"

describe Racional do
   before :each do
      @f = Racional.new(-8,4)
   end
   describe "Almacenamiento de las variables" do 
      it "Debe existir un numerador" do
         @f.numerador.should eq(-8)
      end
      it "Debe existir un denominador" do
         @f.denominador.should eq(4)
      end
   end
   it "Debe de estar en su forma reducida" do
      @f.reducir
      @f.numerador.should eq(-2)
      @f.denominador.should eq(1) 
   end
   describe "Metodos getter" do
      it "Se debe invocar al metodo num() para obtener el numerador" do
         @f.num().should eq(-8)
      end
      it "Se debe invocar al metodo denom() para obtener el denominador" do
         @f.denom().should eq(4)
      end
   end
   describe "Metodos de mostrar" do
      it "Se debe mostrar por consola la fraccion de la forma a/b" do
         @f.to_s.should match "-8/4"
      end
      it "Se debe mostrar por consola la fraccion en forma flotante" do
         @f.flotante.should eq(-2.0)
      end
   end
   describe "Metodos de calculo" do
   	it "Se debe multiplicar dos fracciones y dar su valor absoluto" do
   		@f2 = Racional.new(54,32)
         @f.*(@f2)
         @f.abs
         @f.numerador.should eq(27)
         @f.denominador.should eq(8)
   	end
      it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
         @f2 = Racional.new(-54,32)
         @f.+(@f2)
         @f.numerador.should eq(-59)
         @f.denominador.should eq(16)
      end
      it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
         @f2 = Racional.new(-54,32)
         @f.-(@f2)
         @f.numerador.should eq(-5)
         @f.denominador.should eq(16)
      end
      it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
         @f2 = Racional.new(-54,32)
         @f.*(@f2)
         @f.numerador.should eq(27)
         @f.denominador.should eq(8)
      end
      it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
         @f2 = Racional.new(-54,32)
         @f./(@f2)
         @f.numerador.should eq(-32)
         @f.denominador.should eq(-27)
      end
      it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
         @f2 = Racional.new(-27.0,16.0)
         @f.%(@f2).should eq(-0.3125)
      end
      it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
         @f.abs
         @f.numerador.should eq(8)
         @f.denominador.should eq(4)
      end

      it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
         @f.reciprocal
         @f.numerador.should eq(4)
         @f.denominador.should eq(-8)
      end
      it "Se debe calcular el opuesto de una fraccion con -@" do
         @f.-@
         @f.numerador.should eq(8)
      end
   end
   describe "Metodos de comparacion" do
      it "Se debe comparar si dos fracciones son iguales con ==" do
         @f2 = Racional.new(-8,4)
         @f3 = Racional.new(1,6)
         @f.==(@f2).should be true
         @f.==(@f3).should be false 
      end
      it "Se debe de poder comprobar si una fracion es menor que otra" do
         @f2 = Racional.new(1,3)
         @f3 = Racional.new(-16,2)
         @f.menor(@f2).should be true
         @f.menor(@f3).should be false
      end
      it "Se debe de poder comprobar si una fracion es mayor que otra" do
         @f2 = Racional.new(1,3)      
         @f3 = Racional.new(-16,2)
         @f.mayor(@f2).should be false
         @f.mayor(@f3).should be true
      end
      it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
         @f2 = Racional.new(1,3)
         @f3 = Racional.new(-16,2)
         @f4 = Racional.new(-8,4)
         @f.menorigual(@f2).should be true
         @f.menorigual(@f3).should be false
         @f.menorigual(@f4).should be true
      end
      it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
         @f2 = Racional.new(1,3)
         @f3 = Racional.new(-16,2)
         @f4 = Racional.new(-8,4)
         @f.mayorigual(@f2).should be false
         @f.mayorigual(@f3).should be true
         @f.mayorigual(@f4).should be true
      end
   end
end
