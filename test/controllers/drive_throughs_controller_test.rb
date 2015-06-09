require 'test_helper'

class DriveThroughsControllerTest < ActionController::TestCase
  setup do
    @drive_through = drive_throughs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drive_throughs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drive_through" do
    assert_difference('DriveThrough.count') do
      post :create, drive_through: { food: @drive_through.food, total_macros: @drive_through.total_macros, user_id: @drive_through.user_id }
    end

    assert_redirected_to drive_through_path(assigns(:drive_through))
  end

  test "should show drive_through" do
    get :show, id: @drive_through
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drive_through
    assert_response :success
  end

  test "should update drive_through" do
    patch :update, id: @drive_through, drive_through: { food: @drive_through.food, total_macros: @drive_through.total_macros, user_id: @drive_through.user_id }
    assert_redirected_to drive_through_path(assigns(:drive_through))
  end

  test "should destroy drive_through" do
    assert_difference('DriveThrough.count', -1) do
      delete :destroy, id: @drive_through
    end

    assert_redirected_to drive_throughs_path
  end
end
