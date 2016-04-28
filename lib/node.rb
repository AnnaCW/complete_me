
class Node
  attr_accessor :children, :end_node

  def initialize
    @children = {}
    @end_node = false
  end

end
