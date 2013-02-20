require 'test_helper'

class ScribblingsControllerTest < ActionController::TestCase
  setup do
    @scribbling = scribblings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scribblings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scribbling" do
    assert_difference('Scribbling.count') do
      post :create, scribbling: { body: @scribbling.body, witch_id: @scribbling.witch_id }
    end

    assert_redirected_to scribbling_path(assigns(:scribbling))
  end

  test "should show scribbling" do
    get :show, id: @scribbling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scribbling
    assert_response :success
  end

  test "should update scribbling" do
    put :update, id: @scribbling, scribbling: { body: @scribbling.body, witch_id: @scribbling.witch_id }
    assert_redirected_to scribbling_path(assigns(:scribbling))
  end

  test "should destroy scribbling" do
    assert_difference('Scribbling.count', -1) do
      delete :destroy, id: @scribbling
    end

    assert_redirected_to scribblings_path
  end
end
