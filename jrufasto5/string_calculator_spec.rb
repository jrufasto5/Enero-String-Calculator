require './string_calculator.rb'

describe "StringCalculator" do 

	it "retonar 0 para ''" do
    StringCalculator.add('').should == 0
  	end

  	it "retorna 1 para '1'" do
    StringCalculator.add('1').should == 1
  end

  it "retorna 3 para '1,2'" do
    StringCalculator.add('1,2').should == 3
  end
  
  it "retorna 15 para '1,2,3,4,5'" do
    StringCalculator.add('1,2,3,4,5').should == 15
  end

  it "retorna 10 para '1\n2,3,4'" do
    StringCalculator.add('1\n2,3,4').should == 10
  end

  it "retorna 6 para '//;\n1;2//;,3'" do
    StringCalculator.add('//;\n1;2//;,3').should == 6
  end

it "llama a raise exception si encuentra un numero negativo" do
   -> { StringCalculator.add("1,2,-3,5,-7") }.should raise_error("No se permiten negativos")
   end

end

  
