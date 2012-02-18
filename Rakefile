# encoding: utf-8
require 'rubygems'
require 'bundler'
Bundler.setup(:testing)

require 'cucumber/rake/task'

def darwin?
  os=%x[uname -s]
  "Darwin" === os
end

Cucumber::Rake::Task.new do |t|
  opts = defined?(JRUBY_VERSION) ? %w{--tags ~@jruby} : []
  opts += %w{--tags ~@fails-on-darwin} if darwin?
  t.cucumber_opts = opts
end

desc "Run Cucumber features"
task :test => [:cucumber]

task :default => :test
