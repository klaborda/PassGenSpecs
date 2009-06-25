require File.join(File.dirname(__FILE__),'passgen')

describe "Passgen 5 Specs" do
  
  before(:each) do
    @pw= Passgen.new(3,4)
  end
  
  it "should exist" do
    @pw.should_not be_nil
  end
  
  it "should accept an init param" do
    @pw.should_not be_nil
  end

  it "should return a password with .gen_passwd method with length of the second argument" do
    @pw.gen_passwd.length.should == 4
  end
  
  it "should return an array of size first argument with the .gen_passwd_list method" do
    @pw.gen_passwd_list.length.should == 3
  end
end

describe "Passgen 5 command line executable" do
  before(:all) do
    @exe = File.expand_path(File.dirname(__FILE__) + '/rubypassgen')
  end
  
  it "should have a shell executable called 'pwd'" do
    File.exists?(@exe).should be_true
  end

  it "should be executable" do
    File.executable?(@exe).should be_true
  end

  it "should take two numbers as params and output <1st argument> passwords of length <2nd argument>" do
    list=`#{@exe} 3 2`.split(" ")
	  len = list.length
		len.should == 3

		list.each { |password|
			password.length.should == 2
		}
  end
end
