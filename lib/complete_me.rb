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
    x = word.length - 1
    if i == x && node.end_node = true
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


  # def suggest(prefix)
  #   suggestions = []
  #   @inserted.each do |word|
  #     if word.include?(prefix)
  #       suggestions << word
  #     else
  #       match = false
  #     end
  #   end
  # suggestions
  # end
  #
  #
  # def retrieve(prefix)
  #   children = @root
  #   count = 0
  #   while count < prefix.length
  #     children = children[prefix[count]].children
  #     break if !children
  #     count += 1
  #   end
  #   if children
  #     puts "Word exists"
  #   else
  #     puts "Word does not exist"
  #   end
  # end



end

# #   def select(prefix, selected_word)
# #     take prefix (in already-split form)
# #     search tree - find last letter
# #     record count (#of times searched) in the appropriate node.
# #         # found node - count+=1

# #   # select method - takes a substring and the selected suggestion. You will need to record this selection in your trie and use it to influence future selections to make.
# #
#
#

completion = CompleteMe.new
  # dictionary = File.read("/usr/share/dict/words")
  # completion.populate(dictionary)
 completion.insert("pizza")
 completion.insert("why")
 p completion.count



# completion2 = CompleteMe.new
# completion2.insert("benz")
#
 # completion.suggest("piz")
# # #
# # completion.count
# # => 235886
# #
# # completion.suggest("piz")
# => ["pizza", "pizzeria", "pizzicato"]
