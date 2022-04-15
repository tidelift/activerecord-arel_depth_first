# frozen_string_literal: true

module Arel # :nodoc: all
  module Nodes
    class Node
      include Enumerable

      # Iterate through AST, nodes will be yielded depth-first
      def each(&block)
        return enum_for(:each) unless block_given?

        ::Arel::Visitors::DepthFirst.new(block).accept self
      end
    end
  end
end
