require File.join(File.dirname(__FILE__),'passgen')

describe "Passgen 1 specs" do

	before(:all) do
		@pass = Passgen.new(8,2)
	end

	it "should exist" do
		@pass.should_not be_nil
	end

	it "should generate a password x characters long with the createPass function" do
		@pass.createPass(8).length.should equal(8)
	end

	it "should generate x passwords" do
		@pass.to_a.length.should equal(2)
	end

end
