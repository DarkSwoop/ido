require File.dirname(__FILE__) + '/../test_helper'

class TrackableItemsControllerTest < ActionController::TestCase
  setup do
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
  
  context "getting the index action" do
    should "return the root elements" do
      item1 = Factory(:trackable_item, :parent => nil)
      item2 = Factory(:trackable_item, :parent => nil)
      item3 = Factory(:trackable_item, :parent => item1)
      
      get :index
      
      assert assigns(:trackable_items).include?(item1)
      assert assigns(:trackable_items).include?(item2)
      assert !assigns(:trackable_items).include?(item3)
      assert @response.body.match(/#{item1.name}/)
      assert @response.body.match(/#{item2.name}/)
    end
  end
  
  
  
end
