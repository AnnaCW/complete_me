require "pry"
require "./lib/node"

class CompleteMe
  attr_accessor :root, :count, :children, :end_node

  def initialize
    @root = Node.new
    @count = 0
  end

  def populate(dictionary, count=0)
    dictionary.split("\n").map(&:downcase).each { |word| insert(word, node=root) }
   end

  def insert(word,node=root)
    key = word[0]
    word = word[1..-1]

    if key == word
      node.end_node = true
      @count+=1
    else
      if !children.nil? && children.has_key?(key)
        children[key] = node
        insert(word,node)
      else
        node = Node.new
        children[key]=node
        insert(word,node)
      end
    end
    @count
  end

def ab_suggest(prefix)
  prefix_node = find_node(prefix)
  node_traverse(prefix_node)
end

def node_traverse(node, arr = [])
  if children.nil?
    return arr
  elsif node.end_node == true
    arr << node
    chilren[key] = node
    node_traverse(node, arr)
  end
end

def find_node(string, node=root, match ="", x = 0)
  key = string[x]
  if x = string.length - 1
    return node
  else
    !children.nil? && children.has_key?(key)
    children[key] = node
    find_node(string,node,match+=key, x+=1)
  end
end

  def search(string,node=root, match ="")
    key = string[0]
    string = string[1..-1]
    if string.nil?
      return match
    else
      !children.nil? && children.has_key?(key)
      children[key] = node
      search(string,node,match+=key)
    end
   end

  #  def suggest(string, node=root, match ="")
  #    if children.nil?
  #      return match
  #    elsif !string.nil? && string.length > 0
  #     key = string[0]
  #     string = string[1..-1]
  #
  #     !children.nil? && children.has_key?(key)
  #     children[key] = node
  #       if node.end_node == true
  #         match += key
  #       end
  #       suggest(string, node, match)
  #   else
  #     children[key] = node
  #     if node.end_node == true
  #       match += key
  #     end
  #     suggest(string, node, match)
  #   end
  # end

end
