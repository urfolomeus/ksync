def messenger
  @messenger ||= StringIO.new
end

def ksync
  @ksync ||= KitchenSync::KSync.new(messenger)
end

def messages_should_include(message)
  messenger.string.split("\n").should include(message)
end

Given /^kitchen\-sync is not yet started$/ do
end

Given /^kitchen\-sync is started$/ do
  ksync.start(src, dest)
end

When /^I start kitchen sync with valid directories$/ do
  ksync.start(src, dest)
end

When /^I enter command (.*)$/ do |command|
  ksync.command(command.split)
end

Then /^I should see "([^\"]*)"$/ do |message|
  messages_should_include(message)
end

Then /^the application should terminate$/ do
end