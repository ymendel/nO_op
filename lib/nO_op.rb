module O_o
end

class O
  def initialize(o)
    @o = o
  end

  def o
    @o
  end

  def O
    @o
  end
end

module Kernel
  def O_o
    self
  end

  def o_O
    self
  end

  def O
    O.new(self)
  end

  def o
    O.new(self)
  end
end
