
Given /^environment variable (.*) is set to "([^"]*)"$/ do |name, value|
  ENV[name]=value
end

