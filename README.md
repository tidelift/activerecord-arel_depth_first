Active Record Arel DepthFirst Visitor
=====================================

This gem re-introduces Arel code that was removeed from Rails 6.1: https://github.com/rails/rails/pull/36492

The code existed in Arel from 4.0.0 to 9.0.0, and Ruby on Rails 4.0.* to 6.0.*. 

It provides a DepthFirst visitor for Arel that allows you to traverse the Arel AST, 
e.g. for visualizations.

Installation
------------

Include this gem into your Gemfile:

```ruby
gem 'activerecord-arel_depth_first'
```

Example
-------

This visitor makes the Arel AST enumerable, so you can do a depth-first 
iteration over it:

``` ruby
User.some_arbitrary_scope.arel.ast.each do |node|
  case node
  when Arel::Table
    # do something for table nodes
  when Arel::Nodes::Equality
    # do something for equality nodes
  else 
    # and so on ...
  end
end
```

## License

activerecord-arel_depth_first is released under the [MIT License](MIT-LICENSE).




