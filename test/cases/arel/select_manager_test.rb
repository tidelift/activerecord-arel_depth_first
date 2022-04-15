# frozen_string_literal: true

require_relative "helper"

module Arel
  class SelectManagerTest < Arel::Spec
    describe "ast" do
      it "should allow orders to work when the ast is grepped" do
        table = Table.new :users
        mgr = table.from
        mgr.project Arel.sql "*"
        mgr.from table
        mgr.orders << Arel::Nodes::Ascending.new(Arel.sql("foo"))
        mgr.ast.grep(Arel::Nodes::OuterJoin)
        assert_equal %{SELECT * FROM "users" ORDER BY foo ASC}, mgr.to_sql
      end
    end
  end
end
