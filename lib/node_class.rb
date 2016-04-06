
class Node
  attr_accessor :children
  attr_accessor :end

  def initialize
    @children = {}
    @end_node=false
  end

  def create_node(word,i,node)
    if i == word.length
      end_node =true
    else
      new_node=Node.new[word[i]]
      node.children[word[i]] = new_node
      create_node(new_node,word[i+=1..-1])
    end
    node
  end

end
