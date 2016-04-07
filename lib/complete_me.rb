require "pry"
require "./lib/node"


class CompleteMe
  attr_accessor :root
  attr_accessor :count
  attr_accessor :end_node
  attr_accessor :children
  attr_accessor :letter

  def initialize
    @root = Node.new("")
    @count = 0
  end

  def populate(dictionary, count=0)
    word_array = []
    arr = dictionary.split
    arr.each do |word|
      word_array << word.downcase
    end
    word_array.each do |word|
      insert(word)
    end
  end

  def insert(word, i=0, node=root)
    x = word.length-1
    if i == x && node.end_node = true
      return
    elsif node.children.include?(word[i])
      node.children = next_node
      insert(word, i+=1, next_node)
    else
      create_node(node, i, word)
    end
  end

  def create_node(node, i, word)
    x = word.length-1
    node=Node.new(word[i])
    new_node = node.children[word[i]]
    if i < x
      create_node(new_node, i+=1, word)
    else
      node.end_node = true
      @count+=1
    end
    @count
  end

  # def suggest(word, i=0, node=root)
  #   x = word.length-1
  #   until i == x
  #     children = suggest(word, i+=1, node.children[word[i]])
  #   end
  #     children = node.children[key] until end_node == true
  #   end
end

# completion = CompleteMe.new
# completion.insert("pizza")
# completion.suggest("pi")
