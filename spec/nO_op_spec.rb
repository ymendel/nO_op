require File.dirname(__FILE__) + '/helper.rb'

describe O_o do
  O_o
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

  it "should allow 'O.o' as a line on its own" do
    lambda { O.o }.should.not.raise
  end

  it "should allow 'o.O' as a line on its own" do
    lambda { o.O }.should.not.raise
  end
end
