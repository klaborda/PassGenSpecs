require File.join(File.dirname(__FILE__),'passgen')

describe "Passgen 4 Specs" do
	it "should set a length variable" do
		passwdGen = Passgen.new(1,20,'asdf')
		length = passwdGen.length(20)
		length.should == 20

	end

	it "should set the numberOfPasswords variable" do
		passwdGen = Passgen.new(1,20,'asdf')
		np = passwdGen.numberOfPasswords(10)
		np.should == 10
	end

	it "should create a random string of text" do
		passwdGen = Passgen.new(1,20,'abcdef')
		passwdGen.generate()
		
		passwdGen.passwords.should_not be_nil 

	end

	it "should create more than one password" do
		passwdGen = Passgen.new(10,20,'abcdef')
		passwdGen.generate()

		passwdGen.passwords[2].should_not be_nil
		passwdGen.passwords.length.should == 10
	end

	it "should set a character set" do
		passwdGen = Passgen.new(1,8,'abcdef')
		passwdGen.setChars('abcdef')

		passwdGen.availChars.should_not be_nil
		passwdGen.availChars[1].chr.should == "b"
	end
end
