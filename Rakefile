#!/usr/bin/env rake

require "bundler/setup"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs = ["test"]
  t.pattern = "test/**/*_test.rb"
  t.ruby_opts = ['-w']
end

task :default => :test
