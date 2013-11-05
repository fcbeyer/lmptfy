require 'test_helper'

class PetersControllerTest < ActionController::TestCase
  setup do
    @peter = peters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peter" do
    assert_difference('Peter.count') do
      post :create, peter: { email: @peter.email, name: @peter.name }
    end

    assert_redirected_to peter_path(assigns(:peter))
  end

  test "should show peter" do
    get :show, id: @peter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peter
    assert_response :success
  end

  test "should update peter" do
    put :update, id: @peter, peter: { email: @peter.email, name: @peter.name }
    assert_redirected_to peter_path(assigns(:peter))
  end

  test "should destroy peter" do
    assert_difference('Peter.count', -1) do
      delete :destroy, id: @peter
    end

    assert_redirected_to peters_path
  end
end
