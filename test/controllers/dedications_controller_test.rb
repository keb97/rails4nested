require 'test_helper'

class DedicationsControllerTest < ActionController::TestCase
  setup do
    @dedication = dedications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dedications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dedication" do
    assert_difference('Dedication.count') do
      post :create, dedication: { words: @dedication.words }
    end

    assert_redirected_to dedication_path(assigns(:dedication))
  end

  test "should show dedication" do
    get :show, id: @dedication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dedication
    assert_response :success
  end

  test "should update dedication" do
    patch :update, id: @dedication, dedication: { words: @dedication.words }
    assert_redirected_to dedication_path(assigns(:dedication))
  end

  test "should destroy dedication" do
    assert_difference('Dedication.count', -1) do
      delete :destroy, id: @dedication
    end

    assert_redirected_to dedications_path
  end
end
