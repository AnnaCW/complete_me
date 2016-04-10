require "pry"
require "./lib/node"

class CompleteMe
  attr_accessor :root, :count, :next, :end_node

  def initialize
    @root = {}
    @count = 0
  end

  def populate(dictionary, count=0)
    dictionary.split("\n").map(&:downcase).each { |word| insert(word, node=root) }
   end

  def insert(word,node=root)
    key = word[0]
    word = word[1..-1]

    if key == word
      end_node = true
      @count+=1

    else
      if !@next.nil? && @next.has_key?(key)
        @next[key] = node
        insert(word,node)
      else
        node = Node.new
        @next[key]=node
        insert(word,node)
      end
    end
    @count
  end


  def search(string,node=root, match ="")
    key = string[0]
    string = string[1..-1]
    if string.nil?
      return match
    else
      !@next.nil? && @next.has_key?(key)
      @next[key] = node
      search(string,node,match+=key)
    end
   end


   def suggest(string,node=root, match ="")
    key = string[0]
    string = string[1..-1]

    if string.length > 0
      puts "hitting step 1"
      !@next.nil? && @next.has_key?(key)
      @next[key] = node
      suggest(string,node,match+=key)
    else
      puts "on to step 2"
      @next[key] = node
      find(node,match+=key)
    end
  end


  def find(node,match)
    if end_node == true
    puts  "end_node is true"
      return
    elsif node.nil?
    puts  "just returning nil"
      return match
    else
    puts  "hitting step 3"
    # node.keys.map { |key| find(node, match+key)}
    suggestions = node.keys.map {|key| match+key}
    end
  end

      # @next.keys.each do |key|
      # search(@next[key],match+=key)

end
