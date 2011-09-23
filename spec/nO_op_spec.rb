require File.dirname(__FILE__) + '/helper.rb'

describe O_o do
  # I'll admit this is rather pointless, since the describe line above ensures the constant has to exist.
  # I just didn't want to have an empty describe block, amusing as that would be.
  it 'should exist' do
    lambda { O_o }.should.not.raise(NameError)
  end
end

describe 'methods' do
  it "should add an 'O_o' method" do
    Object.new.should.respond_to(:O_o)
  end

  describe "'O_o' method" do
    it 'should not require arguments' do
      lambda { Object.new.O_o }.should.not.raise(ArgumentError)
    end

    it 'should return the calling object' do
      obj = Object.new
      obj.O_o.should == obj
    end
  end

  it "should add an 'o_O' method" do
    Object.new.should.respond_to(:o_O)
  end

  describe "'o_O' method" do
    it 'should not require arguments' do
      lambda { Object.new.o_O }.should.not.raise(ArgumentError)
    end

    it 'should return the calling object' do
      obj = Object.new
      obj.o_O.should == obj
    end

    it 'should be callable on its own' do
      lambda { o_O }.should.not.raise
    end
  end

  it "should add an 'O' method" do
    Object.new.should.respond_to(:O)
  end

  describe "'O' method" do
    it "should return an object that responds to 'o' by returning the original calling object" do
      obj = Object.new
      obj.O.o.should == obj
    end
  end

  it "should add an 'o' method" do
    Object.new.should.respond_to(:o)
  end

  describe "'o' method" do
    it "should return an object that responds to 'O' by returning the original calling object" do
      obj = Object.new
      obj.o.O.should == obj
    end
  end
end
