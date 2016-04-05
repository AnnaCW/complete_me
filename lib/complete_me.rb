
class CompleteMe
  attr_accessor :root

  def initialize
    @root = nil
    # populate(dictionary)
  end

  def populate(dictionary)
    dictionary = File.read("/usr/share/dict/words")
    #INSERT METHOD
  end
# populate(dictionary) MD: tree populates when initialized.  #but this seems to contradict the project description - clarify
#populate will use the insert method



#convert inputs to lower case
#what about hyphens, etc?

  def insert

  end


  def count
  end
  # Count the number of words in the dictionary


  def suggest(prefix)
    prefix = prefix.downcase.chars

    #if this prefix has been entered before,
    # return previously selected (words)

    # else, proceed with checking trie and returning possible words

    # make arra for each word, then combine

    # select(prefix, selected_word)
      # after user makes a selecrion, pass selection to select method
  end

  def select(prefix, selected_word)
    take prefix (in already-split form)
    search tree - find last letter
    record count (#of times searched) in the appropriate node.
        # found node - count+=1
    end

  end
  # select method - takes a substring and the selected suggestion. You will need to record this selection in your trie and use it to influence future selections to make.



end

# completion = CompleteMe.new
# completion.insert("pizza")

# completion.count
# => 1
#
# completion.suggest("piz")
# => ["pizza"]
#
# dictionary = File.read("/usr/share/dict/words")
#
# completion.populate(dictionary)
#
# completion.count
# => 235886
#
# completion.suggest("piz")
# => ["pizza", "pizzeria", "pizzicato"]
