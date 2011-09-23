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
end
