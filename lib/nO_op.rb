module O_o
end

class O
  def initialize(o)
    @o = o
  end

  attr_reader :o
  alias_method :O, :o
end

module Kernel
  def O_o
    self
  end
  alias_method :o_O, :O_o

  def O
    O.new(self)
  end
  alias_method :o, :O
end
