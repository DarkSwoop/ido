require File.dirname(__FILE__) + '/../test_helper'

class TrackableItemsControllerTest < ActionController::TestCase
  def setup
    @trackable_item = Factory(:trackable_item)
    @trackable_items = TrackableItem.all
  end

  should_be_restful do |resource|
    resource.create.params = { :name => 'blah blah blah'}
    resource.update.params = { :name => "changed" }

    resource.create.flash  = nil
    resource.update.flash  = nil
    resource.destroy.flash = nil
  end
end
