require 'rubygems'
require 'aruba/cucumber'
require 'fileutils'
require 'rspec/expectations'

ENV['PATH'] = "#{File.expand_path(File.dirname(__FILE__) + '/../../bin')}#{File::PATH_SEPARATOR}#{ENV['PATH']}"

Before do
  @aruba_timeout_seconds = 5
  @dirs = ["bin"]
end

Aruba.configure do |config|
  config.before_cmd do |cmd|
    puts "About to run '#{cmd}'"
  end
end
