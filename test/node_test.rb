require "minitest"
require "minitest/autorun"
require "./lib/node"
require "./test/test_helper"


class NodeTest < Minitest::Test
  attr_reader :node

  def setup
    @node = Node.new
  end

  def test_it_initializes_node
     assert node
  end

  def test_it_creates_children_hash
     assert_equal Hash, node.children.class
  end

  def test_it_creates_empty_children_hash
     assert_equal ({}), node.children
  end

  def test_end_node_starts_false
      assert_equal false, node.end_node
  end

end
