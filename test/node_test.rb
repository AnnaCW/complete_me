require "minitest"
require "minitest/autorun"
require "./lib/node"
require "./test/test_helper"


class NodeTest < Minitest::Test
  attr_reader :node

  def setup
    @node = Node.new
  end

  def test_can_initialize_next_variable
     assert_equal ({}), node.next
  end

  def test_end_node_starts_false
      assert_equal false, node.end_node
  end

end
