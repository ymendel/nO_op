require File.dirname(__FILE__) + '/helper.rb'

describe O_o do
  # I'll admit this is rather pointless, since the describe line above ensures the constant has to exist.
  # I just didn't want to have an empty describe block, amusing as that would be.
  it 'should exist' do
    lambda { O_o }.should.not.raise(NameError)
  end
end
