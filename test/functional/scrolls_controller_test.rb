require 'test_helper'

class ScrollsControllerTest < ActionController::TestCase
  setup do
    @scroll = scrolls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scrolls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scroll" do
    assert_difference('Scroll.count') do
      post :create, scroll: { title: @scroll.title }
    end

    assert_redirected_to scroll_path(assigns(:scroll))
  end

  test "should show scroll" do
    get :show, id: @scroll
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scroll
    assert_response :success
  end

  test "should update scroll" do
    put :update, id: @scroll, scroll: { title: @scroll.title }
    assert_redirected_to scroll_path(assigns(:scroll))
  end

  test "should destroy scroll" do
    assert_difference('Scroll.count', -1) do
      delete :destroy, id: @scroll
    end

    assert_redirected_to scrolls_path
  end
end
