require "pry"
require "./lib/node"

class CompleteMe
  attr_accessor :root
  attr_accessor :count
  attr_accessor :end_node
  attr_accessor :next

  def initialize
    @root = {}
    @count = 0
  end

  def populate(dictionary, count=0)
    word_array = []
    arr = dictionary.split
    arr.each do |word|
      word_array << word.downcase
    end
    word_array.each do |word|
      insert(word, i=0, node=root)
    end
  end

  def insert(word, i=0, node=root)
    x = word.length-1
    if i == x && node.end_node = true
      return
    elsif node.include?(word[i])
      insert(word, i+=1, node=node.next)
    else
      create_node(node, i, word)
    end
  end

  def create_node(node, i, word)
    x = word.length
    node = Node.new()
    node.next[word[i]] = node
    if i == x
      node.end_node = true
      @count+=1
    else
    create_node(node, i+=1, word)
    end
    node
  end

end
