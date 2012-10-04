require 'test_helper'

class TimedownsControllerTest < ActionController::TestCase
  setup do
    @timedown = timedowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timedowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timedown" do
    assert_difference('Timedown.count') do
      post :create, timedown: { description: @timedown.description, end: @timedown.end, shift_id: @timedown.shift_id, start: @timedown.start }
    end

    assert_redirected_to timedown_path(assigns(:timedown))
  end

  test "should show timedown" do
    get :show, id: @timedown
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timedown
    assert_response :success
  end

  test "should update timedown" do
    put :update, id: @timedown, timedown: { description: @timedown.description, end: @timedown.end, shift_id: @timedown.shift_id, start: @timedown.start }
    assert_redirected_to timedown_path(assigns(:timedown))
  end

  test "should destroy timedown" do
    assert_difference('Timedown.count', -1) do
      delete :destroy, id: @timedown
    end

    assert_redirected_to timedowns_path
  end
end
