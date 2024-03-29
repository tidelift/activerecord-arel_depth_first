# frozen_string_literal: true

require_relative "../helper"

module Arel
  class TestNode < Arel::Test
    def test_each
      list = []
      node = Nodes::Node.new
      node.each { |n| list << n }
      assert_equal [node], list
    end

    def test_generator
      list = []
      node = Nodes::Node.new
      node.each.each { |n| list << n }
      assert_equal [node], list
    end

    def test_enumerable
      node = Nodes::Node.new
      assert_kind_of Enumerable, node
    end
  end
end
