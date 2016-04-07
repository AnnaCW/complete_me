
class Node
  attr_accessor :letter
  attr_accessor :children
  attr_accessor :end_node

  def initialize(letter, end_node=false)
    @letter = letter
    @children = {}
    @end_node = end_node
  end

end
