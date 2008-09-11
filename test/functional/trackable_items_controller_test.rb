require File.dirname(__FILE__) + '/../test_helper'

class TrackableItemsControllerTest < ActionController::TestCase
  context "routing" do
    should('index') { assert_routing '/trackable_items', :controller => 'trackable_items', :action => 'index' }
    should('new') { assert_routing '/trackable_items/new', :controller => 'trackable_items', :action => 'new' }
    should('create') { assert_routing({:method => :post, :path => '/trackable_items'}, {:controller => 'trackable_items', :action => 'create'}) }
    should('show') { assert_routing '/trackable_items/5', :controller => 'trackable_items', :action => 'show', :id => '5' }
    should('edit') { assert_routing '/trackable_items/5/edit', :controller => 'trackable_items', :action => 'edit', :id => '5' }
    should('update') { assert_routing({:method => :put, :path => '/trackable_items/5'}, {:controller => 'trackable_items', :action => 'update', :id => '5'}) }
    should('destroy') { assert_routing({:method => :delete, :path => '/trackable_items/5'}, {:controller => 'trackable_items', :action => 'destroy', :id => '5'}) }
  end
end
