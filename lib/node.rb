
class Node
  attr_accessor :letter
  attr_accessor :children
  attr_accessor :end_node
  attr_accessor :parent

  def initialize(letter)
    @letter = letter
    @children = {}
    @end_node=false
  end

end
