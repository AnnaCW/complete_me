require "minitest"
require "minitest/autorun"
require "./lib/complete_me"
require "./test/test_helper"


class CompleteMeTest < Minitest::Test
  attr_reader :comp

  def setup
    @comp = CompleteMe.new
  end

   def test_it_starts_count_at_zero
     assert_equal 0, comp.count
   end

   def test_it_populates_from_small_list
     comp.populate("pizza\ndog\ncat")
     assert_equal 3, comp.count
   end

   def test_it_inserts_1_word
     comp.insert("pizza")
     assert_equal 1, comp.count
   end

   def test_it_finds_end_of_prefix
     comp.insert("pizza")
     assert_equal "piz", comp.search("piz")
   end

  def test_it_finds_node
    comp.insert("pizza")
    assert_equal Node, comp.find_node("piz").class
  end

  def test_can_suggest_one_word_using_refactor
    comp.insert("pizza")
    assert_equal "pizza", comp.ab_suggest("piz")
  end

end
