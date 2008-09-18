require 'test_helper'

class TrackableItemsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:trackable_items)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_trackable_item
    assert_difference('TrackableItem.count') do
      post :create, :trackable_item => { }
    end

    assert_redirected_to trackable_item_path(assigns(:trackable_item))
  end

  def test_should_show_trackable_item
    get :show, :id => trackable_items(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => trackable_items(:one).id
    assert_response :success
  end

  def test_should_update_trackable_item
    put :update, :id => trackable_items(:one).id, :trackable_item => { }
    assert_redirected_to trackable_item_path(assigns(:trackable_item))
  end

  def test_should_destroy_trackable_item
    assert_difference('TrackableItem.count', -1) do
      delete :destroy, :id => trackable_items(:one).id
    end

    assert_redirected_to trackable_items_path
  end
end
