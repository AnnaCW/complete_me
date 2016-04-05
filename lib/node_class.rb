
class Node
  attr_accessor :letter
  attr_accessor :letter_last
  attr_accessor :selected_count
  # attr_accessor :child_nodes

  def initialize(letter, letter_last=false, selected_count=0)
    @letter = letter
    @letter_last
    # @child_nodes = []
  end

  def selected_count(prefix, word, selected_count=0)
    @selected_count
    # need to not only store count in the last node of word(?), but also associate word with prefix
  end


end
