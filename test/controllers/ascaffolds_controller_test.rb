require 'test_helper'

class AscaffoldsControllerTest < ActionController::TestCase
  setup do
    @ascaffold = ascaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ascaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ascaffold" do
    assert_difference('Ascaffold.count') do
      post :create, ascaffold: {  }
    end

    assert_redirected_to ascaffold_path(assigns(:ascaffold))
  end

  test "should show ascaffold" do
    get :show, id: @ascaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ascaffold
    assert_response :success
  end

  test "should update ascaffold" do
    patch :update, id: @ascaffold, ascaffold: {  }
    assert_redirected_to ascaffold_path(assigns(:ascaffold))
  end

  test "should destroy ascaffold" do
    assert_difference('Ascaffold.count', -1) do
      delete :destroy, id: @ascaffold
    end

    assert_redirected_to ascaffolds_path
  end
end
