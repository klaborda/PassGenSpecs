require File.join(File.dirname(__FILE__),'passgen')

describe "Passgen 2 Specs" do
  
  before(:each) do
    @p = Passgen.new
  end
  
  it "should exist" do
    @p.should_not be_nil
  end
  
  it "should return an alphanumeric password with the generate method" do
    @p.generate.should be_instance_of(String)
  end
  
  it "should accept a param for the generate method that determines the length of the password" do
    @p.generate(5).length.should == 5
    @p.generate(10).length.should == 10
  end
  
  it "should be random enough" do
    passes = []
    10.times do
      p = @p.generate
      passes.should_not be_include(p)
      passes << @p.generate
    end
  end
  
  it "should generate an array of passes with generate_series and params for number and length" do
    s = @p.generate_series(4,5)
    s.length.should == 4
    s.should be_instance_of(Array)
    s.each { |m| m.should be_instance_of(String) }
  end
  
end

describe "the rubypassgen executable" do
  
  before(:all) do
    @exe = File.join(File.dirname(__FILE__),'rubypassgen')
  end

  it "should exist and be executable" do
    File.executable?(@exe).should be_true
  end
  
  it "should take two args, but fail gracefully" do
    passlist = %x[#{@exe}]
    passlist.should == "\n" # nothing
    passlist = %x[#{@exe} 4]
    passlist.should == "\n\n\n" # four 0-length passwords
  end
  
  it "should output the right number of correctly lengthed passwords, newline delimited" do
    passlist = %x[#{@exe} 4 5]
    passlist.split("\n").length.should == 4
    passlist.split("\n").select { |pass| pass.length == 5}.length.should == 4    
  end
  
end