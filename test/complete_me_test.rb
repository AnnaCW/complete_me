gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/complete_me'

class CompleteMe < Minitest::Test

  def setup
    @completion = CompleteMe.new
  end


  def test_can_read_dictionary_file
  end

  def test_can_populate_from_dictionary
  end

  def test_can_count_words_in_dictionary
  end

#test can store values associted with keys
suggest
#
# select

# #how to store search history?
# esp since no end node after prefix?


end
