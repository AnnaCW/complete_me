require "minitest"
require "minitest/autorun"
require "./lib/complete_me"
require "./test/test_helper"


class CompleteMeTest < Minitest::Test
  attr_reader :comp

  def setup
    @comp = CompleteMe.new
  end

   def test_root_is_empty_string
     assert_equal "", comp.root.letter
   end

   def test_starting_count
     assert_equal 0, comp.count
   end

   def test_can_insert_1_word
     comp.insert("pizza")
     assert_equal 1, comp.count
   end

   def test_can_populate_from_small_list
     comp.populate("pizza\ndog\ncat")
     assert_equal 3, comp.count
   end

  #  def test_can_suggest_from_small_list
  #    comp.populate("pizza\ndog\ncat")
  #    assert_equal "pizza", comp.suggest("pi")
  #  end

 end
