require 'test_helper'

class CaptodosControllerTest < ActionController::TestCase
  setup do
    @captodo = captodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:captodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create captodo" do
    assert_difference('Captodo.count') do
      post :create, captodo: { finished: @captodo.finished, name: @captodo.name }
    end

    assert_redirected_to captodo_path(assigns(:captodo))
  end

  test "should show captodo" do
    get :show, id: @captodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @captodo
    assert_response :success
  end

  test "should update captodo" do
    patch :update, id: @captodo, captodo: { finished: @captodo.finished, name: @captodo.name }
    assert_redirected_to captodo_path(assigns(:captodo))
  end

  test "should destroy captodo" do
    assert_difference('Captodo.count', -1) do
      delete :destroy, id: @captodo
    end

    assert_redirected_to captodos_path
  end
end
