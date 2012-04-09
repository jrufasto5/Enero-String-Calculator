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
  
  
end
