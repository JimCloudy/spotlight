require 'test_helper'

class WriteupsControllerTest < ActionController::TestCase
  setup do
    @writeup = writeups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:writeups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create writeup" do
    assert_difference('Writeup.count') do
      post :create, :writeup => @writeup.attributes
    end

    assert_redirected_to writeup_path(assigns(:writeup))
  end

  test "should show writeup" do
    get :show, :id => @writeup
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @writeup
    assert_response :success
  end

  test "should update writeup" do
    put :update, :id => @writeup, :writeup => @writeup.attributes
    assert_redirected_to writeup_path(assigns(:writeup))
  end

  test "should destroy writeup" do
    assert_difference('Writeup.count', -1) do
      delete :destroy, :id => @writeup
    end

    assert_redirected_to writeups_path
  end
end
