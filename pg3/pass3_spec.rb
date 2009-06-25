require File.join(File.dirname(__FILE__),'passgen')

describe "Passgen 3 Specs" do
	it "should output 5 random 8 character passwords" do
		passwordgen = Passgen.new
		passwordgen.genPass(3).length.should == 3
		passwordgen.genPass(25).length.should == 25

		passwordgen.getPasses(3).length.should == 3
		passwordgen.getPasses(25).length.should == 25
	end
end
