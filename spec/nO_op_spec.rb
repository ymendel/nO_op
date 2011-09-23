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
end
