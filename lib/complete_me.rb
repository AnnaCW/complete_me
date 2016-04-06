require "./lib/node_class.rb"


class CompleteMe
  attr_accessor :root
  attr_accessor :count

  def initialize
    @root = Node.new
    @count = 0
  end


  def populate(dictionary)
    word_array = []
    arr = dictionary.split
    arr.each do |word|
      word_array << word.downcase
    end

    word_array.each do |word|
      insert(word)
      count+=1
    end

   word_array
  end


  def insert(word, i=0, node=root)
    if node.children.empty?
      Node.new.create_node(word,i,node)
    elsif node.children.has_key?(word[i])
      node = node.children(word[i])
      insert_word(word[i+=1], node)
    else
      Node.new.create_node(word, i, node)
    end
  end

end

completion = CompleteMe.new
completion.count
dictionary = File.read("/usr/share/dict/words")
completion.populate(dictionary)
    # if node.children.empty?
    #   Node.new.create_node(word,i)
    #       # create new node for the first letter of the word. This will be the parent node for the word.then insert children for each letter of the word (hash). could be a separate method.
    #     # end of this method if the above happens
    #   elsif node.children.has_key?(word[i])
    #       # if children has includes key of first letter of word, check second letter
    #     n = word.length
    #   while i < n
    #     if !node.children(word[i]).nil?
    #         # if the key for letter i of word exists in the tree
    #         i += 1
    #       else
    #         break
    #
    #   # current_node still = parent node
    #     # find children (parents hash of children)
    #     node.children
    #     new_node.children - look in hash for if key == word[i]
    #     key - first letter, value - word
    #       if current letter of word matches any key, but word is not present, insert new value associated with key
    #   if no matching key, create one for that letter (not a new node)

# #
# #   def suggest(prefix)
# #     prefix = prefix.downcase.chars
# #
# #     #if this prefix has been entered before,
# #     # return previously selected (words)
# #
# #     # else, proceed with checking trie and returning possible words
# #
# #     # make arra for each word, then combine
# #
# #     # select(prefix, selected_word)
# #       # after user makes a selecrion, pass selection to select method
# #   end
# #
# #   def select(prefix, selected_word)
# #     take prefix (in already-split form)
# #     search tree - find last letter
# #     record count (#of times searched) in the appropriate node.
# #         # found node - count+=1
# #     end
# #
# #   end
# #   # select method - takes a substring and the selected suggestion. You will need to record this selection in your trie and use it to influence future selections to make.
# #
#
#
#
#
# # completion = CompleteMe.new
# # completion.insert("pizza")

# # completion.count
# # => 1
# #
# # completion.suggest("piz")
# # => ["pizza"]
# #
# # dictionary = File.read("/usr/share/dict/words")
# #
# # completion.populate(dictionary)
# #
# # completion.count
# # => 235886
# #
# # completion.suggest("piz")
# => ["pizza", "pizzeria", "pizzicato"]
