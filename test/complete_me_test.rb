require "minitest"
require "minitest/autorun"
require "./lib/complete_me"
require "./test/test_helper"


class CompleteMeTest < Minitest::Test
  attr_reader :comp

  def setup
    @comp = CompleteMe.new
  end

   def test_root_is_empty_hash
     assert_equal ({}), comp.root
   end

   def test_starting_count
     assert_equal 0, comp.count
   end

   def test_insert_1_word
     comp.insert("pizza")
     assert_equal 1, comp.count
   end

   def test_populate_from_small_list
     comp.populate("pizza\ndog\ncat")
     assert_equal 3, comp.count
   end

   def test_can_find_end_of_prefix
     comp.insert("pizza")
     comp.search("piz")
     assert_equal "piz", comp.search("piz")
   end

  def test_can_suggest_one_word
    comp.insert("pizza")
    comp.suggest("piz")
    assert_equal "pizza", comp.suggest("piz")
  end


 end
