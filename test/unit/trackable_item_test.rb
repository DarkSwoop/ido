require File.dirname(__FILE__) + '/../test_helper'

class TrackableItemTest < ActiveSupport::TestCase
  context "with item in db" do
    setup do
      Factory(:trackable_item)
    end  
    should_require_unique_attributes :name
  end
      
  should_require_attributes :name
  
  # noch genauer testen
  should_have_class_methods :root_elements
end
