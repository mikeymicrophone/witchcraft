require 'test_helper'

class WitchesControllerTest < ActionController::TestCase
  setup do
    @witch = witches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:witches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create witch" do
    assert_difference('Witch.count') do
      post :create, witch: { email: @witch.email, first_name: @witch.first_name, last_name: @witch.last_name, witch_name: @witch.witch_name }
    end

    assert_redirected_to witch_path(assigns(:witch))
  end

  test "should show witch" do
    get :show, id: @witch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @witch
    assert_response :success
  end

  test "should update witch" do
    put :update, id: @witch, witch: { email: @witch.email, first_name: @witch.first_name, last_name: @witch.last_name, witch_name: @witch.witch_name }
    assert_redirected_to witch_path(assigns(:witch))
  end

  test "should destroy witch" do
    assert_difference('Witch.count', -1) do
      delete :destroy, id: @witch
    end

    assert_redirected_to witches_path
  end
end
