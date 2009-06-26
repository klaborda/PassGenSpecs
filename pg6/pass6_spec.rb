require File.join(File.dirname(__FILE__),'passgen')

describe "Passgen 6 Spec" do

	before(:each) do
		@f=Passgen.new
	end

	it 'should exist' do
		@f.should_not be_nil
	end

	it 'should create an array with all possible password characters' do
		@f.pw_characters(0).should == "a"
		@f.pw_characters(25).should == "z"
		@f.pw_characters(26).should == "A"
		@f.pw_characters(51).should == "Z"
		@f.pw_characters(52).should == "0"
		@f.pw_characters(61).should == "9"
	end

	it 'should create an array of passwords of length "n" based on user input' do
		@f.create_pw_a.size.should == @f.num_pw_test
	end

	it 'should create a single password array of length "n" based on user input' do
	  @f.get_length_test.should == @f.one_pw_test
	end
end

describe "rubypassgen command line executable" do

  before(:all) do
   @exe = File.expand_path(File.dirname(__FILE__) + '/rubypassgen')
  end

	it "should have a shell executable called 'rubypassgen'" do
    File.exists?(@exe).should be_true
  end

	it "should be executable" do
    File.executable?(@exe).should be_true
  end
end
