require "pry"
require "./node_class"


class CompleteMe
  attr_accessor :parent
  attr_accessor :count
  attr_accessor :end_node
  attr_accessor :children
  attr_accessor :letter

  def initialize
    @parent = {}
  end

  def populate(dictionary, count=0)
    word_array = []
    arr = dictionary.split

    arr.each do |word|
      word_array << word.downcase
    end

    word_array.each do |word|
      insert(word)
      count+=1
    end
    count
  end


  def insert(word, node=nil)
    node ||= @parent
    first_letter = word[0]
    match = node[first_letter]
      if match
        insert(word[1..-1], match.children)
      else
        node[first_letter] = create_node(Node.new(first_letter), word[1..-1])
      end
      inserted = []
      inserted << word
      @inserted = inserted
  end

  def create_node(node, word)
    if word
      new_node=Node.new(word[0])
      node.children[word[0]] = new_node
      create_node(new_node, word[1..-1])
    else
    end_node = true
    end
  end

  def suggest(prefix)
    suggestions = []
    @inserted.each do |word|
      if word.include?(prefix)
        suggestions << word
      else
        match = false
      end
    end
  suggestions
  end


  def retrieve_word(word)
    children = @parent
    count = 0
    # while count < children.length
    #   children = children[word[count]].children
    #   break if !children
    #   count += 1
    # end
    if children
      puts "Word exists"
    else
      puts "Word does not exist"
    end
  end



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
completion.retrieve_word("pizza")

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
