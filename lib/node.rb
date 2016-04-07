
class Node
  attr_accessor :letter
  attr_accessor :next
  attr_accessor :end_node

  def initialize()
    @next = {}
    @end_node = false
  end

end
