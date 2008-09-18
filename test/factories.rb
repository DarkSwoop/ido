require 'factory_girl'
require File.join(RAILS_ROOT, 'test', 'factory_sequences')

Factory.define :trackable_item do |t|
  t.name Factory.next(:name)
end

