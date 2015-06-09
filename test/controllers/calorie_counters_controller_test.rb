require 'test_helper'

class CalorieCountersControllerTest < ActionController::TestCase
  setup do
    @calorie_counter = calorie_counters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calorie_counters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calorie_counter" do
    assert_difference('CalorieCounter.count') do
      post :create, calorie_counter: {  }
    end

    assert_redirected_to calorie_counter_path(assigns(:calorie_counter))
  end

  test "should show calorie_counter" do
    get :show, id: @calorie_counter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calorie_counter
    assert_response :success
  end

  test "should update calorie_counter" do
    patch :update, id: @calorie_counter, calorie_counter: {  }
    assert_redirected_to calorie_counter_path(assigns(:calorie_counter))
  end

  test "should destroy calorie_counter" do
    assert_difference('CalorieCounter.count', -1) do
      delete :destroy, id: @calorie_counter
    end

    assert_redirected_to calorie_counters_path
  end
end
